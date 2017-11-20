#include <sys/socket.h> //for socket
#include <netinet/in.h> //for sockaddr_in htons
#include <arpa/inet.h> //for inet_addr
#include <sys/ioctl.h> //for ioctl
#include <string.h> //for memset
#include <errno.h> //for errno
#include <unistd.h> //for close
#include <stdlib.h> //for malloc
#include "mbufer.h"
#include "log.h"


//实际只使用了ppDmmMailbox、stMailboxAddr、dwTaskMacro三个参数
DWORD dmm::create_mailbox(mbufer **ppMbufer, WORD wMsgAddr, const CHAR *pcTaskName)
{
    /* 创建UDP的socket句柄 */
    INT iSockFd = socket(AF_INET, SOCK_DGRAM, 0);
    if(iSockFd < 0)
    {
        log_error(byLogNum, "Create socket error!");
        return FAILE;
    }

    //由于recv时有定时需求，所以在每次调用时自行确定是否为非阻塞
    /* 将socket设置为非阻塞模式 
    INT iMode = 1; 
    INT iCtlRet = ioctl(iSockFd, FIONBIO, &iMode);
    if(iCtlRet < 0)
    {
        log_error(byLogNum, "Set socket no block error!");
        return FAILE;
    }*/

    INT iSendValue = 500 * 1024;//缓冲区大小为此值2倍
    INT iRecvValue = 500 * 1024;//缓冲区大小为此值2倍
    setsockopt(iSockFd, SOL_SOCKET, SO_SNDBUF, (const CHAR*)&iSendValue, sizeof(INT));
    setsockopt(iSockFd, SOL_SOCKET, SO_RCVBUF, (const CHAR*)&iRecvValue, sizeof(INT));

    struct sockaddr_in stLclAddr;
    memset(&stLclAddr, 0, sizeof(stLclAddr));
    stLclAddr.sin_family = AF_INET;
    switch(wMsgAddr)//从创建邮箱的地址映射出实际使用的ip:port
    {
        case ADDR_1_114:
            stLclAddr.sin_addr.s_addr = inet_addr(IP_1);
            stLclAddr.sin_port = htons(PORT_1);
            break;

        case ADDR_2_114:
            stLclAddr.sin_addr.s_addr = inet_addr(IP_2);
            stLclAddr.sin_port = htons(PORT_2);
            break;

        case ADDR_3_114:
            stLclAddr.sin_addr.s_addr = inet_addr(IP_3);
            stLclAddr.sin_port = htons(PORT_3);
            break;

        case ADDR_4_114:
            stLclAddr.sin_addr.s_addr = inet_addr(IP_4);
            stLclAddr.sin_port = htons(PORT_4);
            break;

        case ADDR_5_114:
            stLclAddr.sin_addr.s_addr = inet_addr(IP_5);
            stLclAddr.sin_port = htons(PORT_5);
            break;

        case ADDR_6_119:
            stLclAddr.sin_addr.s_addr = inet_addr(IP_6);
            stLclAddr.sin_port = htons(PORT_6);
            break;

        case ADDR_7_119:
            stLclAddr.sin_addr.s_addr = inet_addr(IP_7);
            stLclAddr.sin_port = htons(PORT_7);
            break;

        case ADDR_8_119:
            stLclAddr.sin_addr.s_addr = inet_addr(IP_8);
            stLclAddr.sin_port = htons(PORT_8);
            break;

        case ADDR_9_119:
            stLclAddr.sin_addr.s_addr = inet_addr(IP_9);
            stLclAddr.sin_port = htons(PORT_9);
            break;

        case ADDR_10_119:
            stLclAddr.sin_addr.s_addr = inet_addr(IP_10);
            stLclAddr.sin_port = htons(PORT_10);
            break;

        default:
            log_error(byLogNum, "wMsgAddr error(%d)!", wMsgAddr);
            return FAILE;
    }
    //绑定本端地址
    if(bind(iSockFd, (struct sockaddr *)&stLclAddr, sizeof(stLclAddr)) < 0)
    {
        log_error(byLogNum, "socket bind(%d) error(%d, %s)!", wMsgAddr, errno, strerror(errno));
        return FAILE;
    }

    /*socklen_t optlen;
    getsockopt(iSockFd, SOL_SOCKET, SO_SNDBUF, &iSendValue, &optlen);
    getsockopt(iSockFd, SOL_SOCKET, SO_RCVBUF, &iRecvValue, &optlen);
    log_debug(LOG1, "SO_SNDBUF(%d), SO_RCVBUF(%d)", iSendValue, iRecvValue);*/
    
    (*ppMbufer)->dwSocketFd = iSockFd;//将socket句柄记录在邮箱mbufer中
    return SUCCESS;
}

DWORD dmm::delete_mailbox(mbufer *pMbufer)
{
    close(pMbufer->dwSocketFd);
    return SUCCESS;
}


DWORD mbufer::alloc_msg(void **ppSendBuf, WORD wMsgLen)
{
    *ppSendBuf = malloc(wMsgLen);
    if(ppSendBuf == NULL)
    {
        log_error(byLogNum, "malloc error!");
        return FAILE;
    }

    return SUCCESS;
}

DWORD mbufer::free_msg(void *pSendBuf)
{
    free(pSendBuf);

    return SUCCESS;
}

DWORD mbufer::set_cmd_head_flag(void *pSendBuf, DWORD dwSendFlag)
{
    DWORD dwRet = SUCCESS;

    return dwRet;
}

DWORD mbufer::add_to_packet(void *pSendBuf, CMD_S *pstCmdHeader, WORD *pwOffset)
{
    memcpy(pSendBuf, pstCmdHeader->pbyPara, pstCmdHeader->wParaLen);
    *pwOffset = pstCmdHeader->wParaLen;

    return SUCCESS;
}

DWORD mbufer::send_message(WORD wDstAddr, void *pData, WORD wDataLen)
{
    INT iRet = 0;
    //log_debug(byLogNum, "byDstMsgAddr(%d).", byDstMsgAddr);
    struct sockaddr_in stDstAddr;
    memset(&stDstAddr, 0, sizeof(stDstAddr));
    stDstAddr.sin_family = AF_INET;
    switch(wDstAddr)//从创建邮箱的地址映射出实际使用的ip:port
    {
        case ADDR_1_114:
            stDstAddr.sin_addr.s_addr = inet_addr(IP_1);
            stDstAddr.sin_port = htons(PORT_1);
            break;

        case ADDR_2_114:
            stDstAddr.sin_addr.s_addr = inet_addr(IP_2);
            stDstAddr.sin_port = htons(PORT_2);
            break;

        case ADDR_3_114:
            stDstAddr.sin_addr.s_addr = inet_addr(IP_3);
            stDstAddr.sin_port = htons(PORT_3);
            break;

        case ADDR_4_114:
            stDstAddr.sin_addr.s_addr = inet_addr(IP_4);
            stDstAddr.sin_port = htons(PORT_4);
            break;

        case ADDR_5_114:
            stDstAddr.sin_addr.s_addr = inet_addr(IP_5);
            stDstAddr.sin_port = htons(PORT_5);
            break;

        case ADDR_6_119:
            stDstAddr.sin_addr.s_addr = inet_addr(IP_6);
            stDstAddr.sin_port = htons(PORT_6);
            break;

        case ADDR_7_119:
            stDstAddr.sin_addr.s_addr = inet_addr(IP_7);
            stDstAddr.sin_port = htons(PORT_7);
            break;

        case ADDR_8_119:
            stDstAddr.sin_addr.s_addr = inet_addr(IP_8);
            stDstAddr.sin_port = htons(PORT_8);
            break;
            
        case ADDR_9_119:
            stDstAddr.sin_addr.s_addr = inet_addr(IP_9);
            stDstAddr.sin_port = htons(PORT_9);
            break;

        case ADDR_10_119:
            stDstAddr.sin_addr.s_addr = inet_addr(IP_10);
            stDstAddr.sin_port = htons(PORT_10);
            break;

        default:
            log_error(byLogNum, "wDstAddr error(%d)!", wDstAddr);
            return FAILE;
    }
    
    /*getsockopt(g_dwSocketFd, SOL_SOCKET, SO_SNDBUF, &iValue, &optlen);
    log_debug(byLogNum, "SO_SNDBUF(%d)", iValue);*/

    //log_debug(byLogNum, "g_dwSocketFd(%d).", g_dwSocketFd);
    if((iRet = sendto(dwSocketFd, pData, wDataLen, 0, (struct sockaddr *)&stDstAddr, sizeof(stDstAddr))) < 0)
    {
        log_error(byLogNum, "send_message error(%d), errno(%d,%s)!", iRet, errno, strerror(errno));
        return FAILE;
    }
    //log_debug(byLogNum, "sendto(%d).", iRet);

    /*INT iValue = 0;
    socklen_t optlen = 0;
    getsockopt(g_dwSocketFd, SOL_SOCKET, SO_SNDBUF, &iValue, &optlen);
    log_debug(byLogNum, "SO_SNDBUF(%d), sendto(%d)", iValue, iRet);*/
    
    /*if((iRet = sendto(g_dwSocketFd, "test", 4, 0, (struct sockaddr *)&stDstAddr, sizeof(stDstAddr))) < 0)
    {
        log_error(byLogNums "send_message error(%d)!", iRet);
    }*/

    return SUCCESS;
}


DWORD mbufer::receive_message(void *pRecvBuf, WORD *pwBufLen, DWORD dwWaitTime)
{
    INT iFlags = 0;
    if(dwWaitTime == DMM_NO_WAIT)
    {
        iFlags = MSG_DONTWAIT;
    }
    else
    {
        struct timeval timeout;
        timeout.tv_sec = 0;
        timeout.tv_usec = dwWaitTime;//单位为微秒
        setsockopt(dwSocketFd, SOL_SOCKET, SO_RCVTIMEO, (char *)&timeout, sizeof(struct timeval));
        iFlags = MSG_WAITALL;
    }

    INT iRet = 0;
    if((iRet = recv(dwSocketFd, pRecvBuf, *pwBufLen, iFlags)) < 0)
    {
        log_error(byLogNum, "recv error(%d), errno(%d, %s)!", iRet, errno, strerror(errno));
        return FAILE;
    }
    *pwBufLen = (DWORD)iRet;

    //log_debug(byLogNum, "recv(%d).", iRet);
    return SUCCESS;
}

DWORD mbufer::get_from_packet(void *pSendBuf, CMD_S *pstCmdHeader, WORD *pwOffset)
{
    return SUCCESS;
}

DWORD mbufer::get_cmd_head_flag(void *pSendBuf, DWORD dwSendFlag)
{
    return SUCCESS;
}

DWORD mbufer::get_msg_sender_addr(void *pMsgBuf, MSG_ADDR_S &rMsgSenderAddr)
{
    return SUCCESS;
}

DWORD mbufer::get_msg_recver_addr(void *pMsgBuf, MSG_ADDR_S &rMsgRecverAddr)
{
    return SUCCESS;
}

DWORD mbufer::get_msg_data_length(void *pMsgBuf, DWORD &rdwMsgLen)
{
    return SUCCESS;
}

