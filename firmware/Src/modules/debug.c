#include "board.h"
#include "system.h"
#include "debug.h"

#define LOG_TAG    "debug"

#include "elog.h"
#include "elog_cfg.h"

void debug_node_loop(void)
{
    while(1)
    {
        log_a("Hello EasyLogger!%d",sys_get_ms());
        log_e("Hello EasyLogger!%d",sys_get_ms());
        log_w("Hello EasyLogger!%d",sys_get_ms());
        log_i("Hello EasyLogger!%d",sys_get_ms());
        log_d("Hello EasyLogger!%d",sys_get_ms());
        log_v("Hello EasyLogger!%d",sys_get_ms());
        sys_delay_ms(1000);
    }

}
void debug_init(void)
{
    #ifdef USING_SEGGER_RTT_DEBUG
    /* Init RTT Tools */
    SEGGER_RTT_Init();

    /** 配置 RTT 输出通道 (在非阻塞模式下 ,只有不超过缓冲区大小的数据被写入 ,其余的数据将被丢弃) */
    SEGGER_RTT_ConfigUpBuffer(0, "RTTUP", NULL, 0, SEGGER_RTT_MODE_NO_BLOCK_SKIP);
    SEGGER_RTT_ConfigDownBuffer(0, "RTTDOWN", NULL, 0, SEGGER_RTT_MODE_NO_BLOCK_SKIP);
    #endif

    /** 初始化 EASYLOG 组件 */
    elog_init();

     /* 日志格式及样式 */
     /* 断言: 输出所有内容 */
     elog_set_fmt(ELOG_LVL_ASSERT, ELOG_FMT_LVL | ELOG_FMT_TAG | ELOG_FMT_T_INFO);
     /* 错误: 输出级别, 标签 */
     elog_set_fmt(ELOG_LVL_ERROR, ELOG_FMT_LVL | ELOG_FMT_TAG | ELOG_FMT_T_INFO);
     /* 警告: 输出级别, 标签 */
     elog_set_fmt(ELOG_LVL_WARN, ELOG_FMT_LVL | ELOG_FMT_TAG | ELOG_FMT_T_INFO);
     /* 信息: 输出级别, 标签 */
     elog_set_fmt(ELOG_LVL_INFO, ELOG_FMT_LVL | ELOG_FMT_TAG | ELOG_FMT_T_INFO);
     /* 调试: 输出除了方法名之外的所有内容 */
     elog_set_fmt(ELOG_LVL_DEBUG, ELOG_FMT_LVL | ELOG_FMT_TAG | ELOG_FMT_T_INFO);
     /* 详细: 输出除了方法名之外的所有内容 */
     elog_set_fmt(ELOG_LVL_VERBOSE, ELOG_FMT_LVL | ELOG_FMT_TAG | ELOG_FMT_FUNC | ELOG_FMT_LINE | ELOG_FMT_T_INFO);



    /** 使能/失能日志颜色 */
    elog_set_text_color_enabled(true);

    /* 启动日志输出 */
    elog_start();
    static TX_THREAD _thread;
    static uint8_t   _thread_stack[4 * 1024];
    tx_thread_create(&_thread,
                     "debug_node",
                     debug_node_loop,
                     0,
                     &_thread_stack[0],
                     sizeof(_thread_stack),
                     TX_THREAD_PRIORITY_TEST,
                     TX_THREAD_PRIORITY_TEST,
                     TX_NO_TIME_SLICE,
                     TX_AUTO_START);
}