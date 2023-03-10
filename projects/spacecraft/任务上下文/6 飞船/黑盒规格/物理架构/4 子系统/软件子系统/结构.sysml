package '飞船.物理架构.子系统.软件子系统.结构' {
    import dsl::*;

    #'子系统' part def '软件子系统' {

    }

    #'软件' part def <PowerMgmtSW> '电源管理软件' {
        port pPowerData;
        port p2;
        port <cmd_ltm_i_f> '指令和遥测接口';
        port p4;
    }
}