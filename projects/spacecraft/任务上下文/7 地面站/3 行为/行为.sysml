package '地面站.行为' {
    import '辅助元素.接口'::'IO定义'::*;

    action def '发送地面指令' {
        in p;
        out gndCmd;
    }

    action def '计算调整指令' {
        out param : '调整指令';
    }

    action def '规划任务';

    // TODO: more actions

}