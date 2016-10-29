#include <sys/timerfd.h>
#include <string.h> //for memset
#include <unistd.h> //for close
#include "timer.h"
#include "log.h"

int timer_start(int iMS)
{
    if(iMS <= 0)
    {
        log_error("timer start iMS(%d) error!", iMS);
        return -1;
    }
    else
    {
        int iTimerFd = timerfd_create(CLOCK_MONOTONIC, 0); //absolute time from when the system on
        if(iTimerFd < 0)
        {
            log_error("timerfd create error!");
            return -2;
        }
        else
        {
            struct itimerspec iNewTimerSpec;
            memset(&iNewTimerSpec, 0, sizeof(struct itimerspec));
            iNewTimerSpec.it_interval.tv_sec = iMS/1000;
            iNewTimerSpec.it_interval.tv_nsec = iMS%1000*1000000;
            iNewTimerSpec.it_value.tv_sec = iMS/1000;
            iNewTimerSpec.it_value.tv_nsec = iMS%1000*1000000;

            if(timerfd_settime(iTimerFd, 0, &iNewTimerSpec, NULL) < 0) //0 for a time relative to the current value of the clock
            {
                log_error("timerfd settime error!");
                return -3;
            }
            else
            {
                log_info("timer start iMS(%d) ok.", iMS);
                return iTimerFd;
            }
        }
    }
    
}

int timer_close(int iTimerFd)
{
    close(iTimerFd);
    return 0;
}
