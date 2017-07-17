#include <unistd.h> //for read STDIN_FILENO
#include <stdlib.h> //for malloc
#include <string.h> //for strcmp memset strstr
#include <sys/socket.h> //for recv
#include "macro.h"
#include "log.h"
#include "event.h"
#include "timer.h"
#include "vos.h"
#include "mbufer.h"
#include "master.h"
#include "master_send.h"
#include "master_recv.h"
#include "protocol.h"

static vos *g_pMasterVos;
static dmm *g_pMasterDmm;
mbufer *g_pMstMbufer;

DWORD master_stdinProc(void *pObj)
{
    DWORD dwRet = SUCCESS;

    log_debug("master_stdinProc()");

    return dwRet;
}

DWORD master_mailboxProc(void *pObj)
{
    DWORD dwRet = SUCCESS;
    log_debug("master_mailboxProc()");

    BYTE *pbyRecvBuf = master_alloc_RecvBuffer(MAX_BUFFER_SIZE);
    if(pbyRecvBuf == NULL)
    {
        log_error("master_alloc_RecvBuffer error!");
        return FAILE;
    }

    WORD wBufLen = MAX_BUFFER_SIZE;
    dwRet = master_recv(pbyRecvBuf, &wBufLen);
    if(dwRet != SUCCESS)
    {
        log_error("master_recv error!");
        return FAILE;
    }

    log_hex(pbyRecvBuf, wBufLen);

    dwRet = master_msgHandle(pbyRecvBuf, wBufLen);
    if(dwRet != SUCCESS)
    {
        log_error("master_MsgHandle error!");
        return FAILE;
    }

    return dwRet;
}

DWORD master_InitAndLoop(BYTE byMasterAddr)
{
    DWORD dwRet = SUCCESS;
    log_debug("byMasterAddr(%d).", byMasterAddr);

    g_pMstMbufer = new mbufer;
    g_pMstMbufer->g_byMstAddr = byMasterAddr;//实际只使用该位对应ip加端口号
    memset(g_pMstMbufer->g_abySlvAddrs, 0, sizeof(g_pMstMbufer->g_abySlvAddrs));

    /* 初始化事件调用机制vos（用epoll模拟实现） */
    g_pMasterVos = new vos;
    dwRet = g_pMasterVos->VOS_Init();
    if(dwRet != SUCCESS)
    {
        log_error("VOS_Init error!");
        return FAILE;
    }

    /* 初始化网络通信mbufer，并创建邮箱 */
    g_pMasterDmm = new dmm;//实际上在create_mailbox中确定mbufer中的g_dwSocketFd，也就是对应vos中的dwTaskEventFd
    dwRet = g_pMasterDmm->create_mailbox(&g_pMstMbufer, byMasterAddr);
    if(dwRet != SUCCESS)
    {
        log_error("create_mailbox error!");
        return FAILE;
    }

    /* 将mbufer添加到vos中，需要利用Macro关联EventFd和Func */
    dwRet = g_pMasterVos->VOS_RegTaskEventFd(VOS_TASK_MASTER_MAILBOX, g_pMstMbufer->g_dwSocketFd);
    if(dwRet != SUCCESS)
    {
        log_error("VOS_RegTaskEventFd error!");
        return FAILE;
    }
    dwRet = g_pMasterVos->VOS_RegTaskFunc(VOS_TASK_MASTER_MAILBOX, master_mailboxProc, NULL);
    if(dwRet != SUCCESS)
    {
        log_error("VOS_RegTaskFunc error!");
        return FAILE;
    }

    /* 将STDIN_FILENO添加到vos中，需要利用Macro关联EventFd和Func */
    dwRet = g_pMasterVos->VOS_RegTaskEventFd(VOS_TASK_MASTER_STDIN, STDIN_FILENO);
    if(dwRet != SUCCESS)
    {
        log_error("VOS_RegTaskEventFd error!");
        return FAILE;
    }
    dwRet = g_pMasterVos->VOS_RegTaskFunc(VOS_TASK_MASTER_STDIN, master_stdinProc, NULL);
    if(dwRet != SUCCESS)
    {
        log_error("VOS_RegTaskFunc error!");
        return FAILE;
    }

    /* 进入vos循环 */
    g_pMasterVos->VOS_EpollWait(); //while(1)!!!

    return dwRet;
}

DWORD master_Free()
{
    delete g_pMasterVos;
    delete g_pMstMbufer;
    delete g_pMasterDmm;

    return SUCCESS;
}

