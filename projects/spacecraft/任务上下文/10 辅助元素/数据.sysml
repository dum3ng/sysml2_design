package '辅助元素.数据' {
    import 'dsl'::*;
    alias '轨道$'
        for dsl::'轨道';

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

    attribute def '电能';
}