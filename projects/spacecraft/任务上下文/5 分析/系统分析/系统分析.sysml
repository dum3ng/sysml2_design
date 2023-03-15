package '分析.系统分析' {
    import ISQ::*;

    import '飞船.物理架构.结构'::*;

    part def <AnalysisContext> '分析上下文' {}

    calc def <SystemMassAnalysis> '系统质量分析' {
        in <massBudget> '重量预算' : MassValue;
        in <massEstimate> '重量估计' : MassValue;
        in <massMargin> '重量余量' : MassValue;
        in <dryMass> '干重量' : MassValue;
        in <fuelMass> '燃料重量' : MassValue;
        in <systemConfiguration> '系统配置' : SystemConfiguration;

        // TODO:
    }

    part def <SystemPowerAnalysis> '系统能量分析' {}
}