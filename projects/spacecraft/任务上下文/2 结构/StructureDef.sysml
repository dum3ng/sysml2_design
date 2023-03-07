package '结构' {
    import ParametersOfInterestMetadata::moe;
    import 'dsl'::*;
    alias '轨道$'
        for dsl::'轨道';

    part def '任务上下文' {
        part earth : '地球';
        part fd [*] : '消防部门';
        part me : '任务企业';
        part gps [0..*] : GPS;
        part le : '发射环境';
        part se : '太空环境';
    }

    part def '地球' {
        part '主题' : '区域' [*];
    }
    part def '区域' {
        part fire : '火情' [0..*];
        part weather : '天气环境';
    }
    part def '火情';
    part def '天气环境';

    // --------消防部门
    part def '消防部门' {
        part user : '用户' [1..*];
        part equip : '用户设备' [1..*];
    }
    part def '用户' {}
    part def '用户设备' {}

    // ------任务企业
    part def '任务企业' {
        // values
        #moe attribute <coverage> '覆盖范围';
        #moe attribute <expectedFireDetectionTime> '预期火情探测时间';
        #moe attribute <probabilityOfFalseAlarm> '错误报警概率';
        #moe attribute <locationAccuracy> '位置精度';
        #moe attribute <imageQuality> '图像质量';
        #moe attribute <missionLife> '任务寿命';
        #moe attribute <lifecycleCost> '生命周期费用';
        #moe attribute <launchDate> '发射日期';
        #moe attribute <totalValue> '总价值';
        // parts
        part lof : '发射运维设备';
        part lv [1..*] : '发射火箭';
        part sc [1..*] : '飞船';
        part gs : '地面站';
        part rs [0..*] : '中继卫星';
    }

    part def '发射运维设备' {}
    part def '发射火箭' {}
    #'感兴趣的系统' part def '飞船' {
        ref part '轨道' : '轨道';
    }
    part def '地面站' {}
    part def '发射火箭' {}
    part def '中继卫星';

    // --others
    #'轨道$' part def '轨道' {
        attribute <eccentricity> '离心率';
        attribute <semiMajorAxis> '半长轴';
        attribute <inclination> '倾角';
        attribute <rightAscensionOfAscendingNode> '升交点赤经';
        attribute <argumentOfPeriapsis> '近心点角';
        attribute <meanAnomalyAtEpoch> '历期平近点角';
        attribute <percentTimeInEclipse> '月蚀晦暗期';
        attribute <maxBetaAngel> '最大β角';
    }

    part def 'GPS';
    part def '飞船环境' {}
    part def '发射环境' :> '飞船环境';
    part def '太空环境' :> '飞船环境' {
        part e : '内大气层';
        part s : '太阳';
        part star [0..*] : '星';
        part sd [0..*] : '太空碎片';
    }
    part def '太阳';
    part def '星';
    #'硬件' part def <Endoatmosphere> '内大气层';
    part def '太空碎片' {
        attribute <energy> '能量';
    }
}