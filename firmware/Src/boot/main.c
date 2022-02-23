#include "system.h"
#include "tx_api.h"
#include "main.h"
int main(void)
{
    /** 系统初始化 */
    sys_init();
    
    /** 进入 RTOS 调度 */
    tx_kernel_enter();
}

