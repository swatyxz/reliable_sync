#ifndef _LIST_SLV_H_
#define _LIST_SLV_H_

#include "macro.h"

typedef struct tagSLV_NODE
{
    BYTE bySlvAddr;
    BYTE bySlvKeepaliveSendTimes;
    struct tagSLV_NODE *pPrev;
    struct tagSLV_NODE *pNext;
}SLV_NODE_S;

typedef struct tagSLV_LIST
{
    SLV_NODE_S *pFront;
    SLV_NODE_S *pRear;
    BYTE bySlvNums;
}SLV_LIST_S;

/*
 * 
 */
class list_slv
{

public:
    DWORD slv_init(void);
    DWORD slv_free(void);
    DWORD slv_clean(void);

    DWORD slv_push(BYTE bySlvAddr);
    DWORD slv_delete(SLV_NODE_S *pNode);
    SLV_NODE_S *slv_find(BYTE bySlvAddr);
};

#endif //_LIST_SLVADDR_H_