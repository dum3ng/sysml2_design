package '行为.执行任务' {
    import '辅助元素.接口'::'信号'::*;
    import '发射火箭.行为'::*;
    import '飞船.黑盒规格.行为'::*;

    action def '星箭分离' {
        action acce
            accept '飞船分离指令';
        then action a : '初始化分离机制';
        then action c : '控制分离';
        then action sendC
            send '飞船分离完成'(); // send an instance of '飞船分离完成'
            then done;
    }

    action def '发射火箭' {
        first start;
        then fork fork1;
        then action : '运输飞船';
        then action : '控制飞船环境';
        then action : '生成飞船电力';
        then action : '和发射运维、飞船通信';
    }
}