package '发射火箭.行为' {
    import ScalarValues::*;
    import '辅助元素.数据'::*;
    action def '初始化分离机制' {}
    action def '和发射运维通信' {}
    action def '和发射运维、飞船通信' {
        in param1 : Real;
        in param2 : Real;
        out param3 : Real;
        out param4 : Real;
    }
    action def '控制飞船环境' {}
    action def '生成飞船电力' {
        out param : '电能';
    }
    action def '运输飞船' {}
}