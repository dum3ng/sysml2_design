package '飞船.物理架构.子系统.电力子系统.结构' {
    import 'dsl'::*;
    import '飞船.物理架构.子系统.软件子系统.结构'::'电源管理软件';
    import '辅助元素.接口'::'IO定义'::*;

    #'子系统' def '电力子系统' {
        part sa [1..*] : '太阳能阵列';
        part battery : '电池';
        part : '电源分发';
        part : '电源开关';
        part : '电源调节器';
        part pmsw : '电源管理软件';
        ref part adm [0..1] : '阵列部署机构';
        ref part [0..2] : '太阳能阵列万向架';

        attribute <efficiencyInDaylight> '白天效率';
        attribute <efficiencyInEclipse> '月影效率';

        port '内部电力接口';
        port <cmd_ltm_i_f> '指令和遥测接口';
        /* TODO: more ports  */

        /*  internal structure */
        connect cmd_ltm_i_f
            to pmsw.cmd_ltm_i_f;

        flow of '电源遥测' from battery.pPowerData to pmsw.pPowerData;
        flow of '电源指令' from pmsw.pPowerData to battery.pPowerData;

        // TODO: more flows and connections
    }

    #'子系统' def '电力子系统-已安装' :> '电力子系统' {
        part sa_bm : '太阳能阵列-已安装' :>> sa;
        part adm_bm [1] :>> adm;
    }

    #'硬件' part def <PowerConditioner> '电源调节器' {
        doc /* 电源调节器用来提升电源的质量, 如平滑电力曲线 */
    }

    #'硬件' part def <PowerSwitch> '电源开关' {
        doc /* */
    }

    #'硬件' def <Battery> '电池' {
        port pEPower;
        port pPowerData;
    }
    #'硬件' part def <PowerDistribution> '电源分发' {}

    #'硬件' part def <SolarArray> '太阳能阵列' {
        part ap [1..*] : ArrayPanel;
        ref part g [0..1] : SolarArrayGimbal;
        attribute <cellPowerDensity> '单元能量密度';
        attribute <efficiencyAtBetaAngle> 'beta角效率';
        attribute <size> '尺寸';
        attribute <mass> '重量';
    }

    #'硬件' part def <SolarArrayBM> '太阳能阵列-已安装' :> '太阳能阵列' {
        part ap_bm [4] :>> ap;
    }

    #'硬件' part def <SolarArrayBM> '太阳能阵列-2轴' :> '太阳能阵列' {
        part ap_2ag [2] :>> ap;
        ref part g_2ag : '太阳能阵列万向架2轴' :>> g;
    }

    part def <ArrayPanel> '阵列板';
    part def <SolarArrayGimbal> '太阳能阵列万向架';
    part def <SolarArrayGimbal_2Axis> '太阳能阵列万向架2轴' :> '太阳能阵列万向架';

    part def <ArrayDeploymentMechanism> '阵列部署机构';
}