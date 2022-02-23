/*
 * This file is part of the EasyLogger Library.
 *
 * Copyright (c) 2015, Armink, <armink.ztl@gmail.com>
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * 'Software'), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * Function: Portable interface for each platform.
 * Created on: 2015-04-28
 */
 
#include <elog.h>
#include "board.h"
static TX_MUTEX mutex_elog_out;
/**
 * EasyLogger port initialize
 *
 * @return result
 */
ElogErrCode elog_port_init(void) {
    /** 初始化互斥量 */
    tx_mutex_create(&mutex_elog_out,"mutex elog out",TX_NO_INHERIT);
    ElogErrCode result = ELOG_NO_ERR;

    /* add your code here */
    
    return result;
}

/**
 * EasyLogger port deinitialize
 *
 */
void elog_port_deinit(void) {

    /* add your code here */

}

/**
 * output log port interface
 *
 * @param log output of log
 * @param size log size
 */
void elog_port_output(const char *log, size_t size) {
    
    /* add your code here */
    #ifdef USING_SEGGER_RTT_DEBUG
        SEGGER_RTT_Write(0, log, size);
    #else
        printf("log:%s",log);
    #endif
}

/**
 * output lock
 */
void elog_port_output_lock(void) {
    
    tx_mutex_get(&mutex_elog_out, TX_WAIT_FOREVER);
    /* add your code here */
    
}

/**
 * output unlock
 */
void elog_port_output_unlock(void) {
    
    tx_mutex_put(&mutex_elog_out);
    /* add your code here */
    
}

/**
 * get current time interface
 *
 * @return current time
 */
const char *elog_port_get_time(void) {
    
    // struct tm tm;
    // if (rtc_get_local_tm_time(&tm))
    // {
    //     /** 拼接字符串 */
    //     snprintf(info_str,
    //              64,
    //              "%d-%d-%d %d:%d:%d",
    //              tm.tm_year + 1900,
    //              tm.tm_mon + 1,
    //              tm.tm_mday,
    //              tm.tm_hour,
    //              tm.tm_min,
    //              tm.tm_sec);
    //     return info_str;
    // }
    // else
    // {
    //     info_str[0] = '\0';
    // }
    // return info_str;
    /* add your code here */
    
}

/**
 * get current process name interface
 *
 * @return current process name
 */
const char *elog_port_get_p_info(void) {
    
    return "";
    /* add your code here */
    
}

/**
 * get current thread name interface
 *
 * @return current thread name
 */
const char *elog_port_get_t_info(void) {
    
    //TX_THREAD *a;
    //TX_THREAD_GET_CURRENT(a);

    //return a->tx_thread_name;
    /* add your code here */
    
}