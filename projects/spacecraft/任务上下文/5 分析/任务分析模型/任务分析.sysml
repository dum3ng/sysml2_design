package '分析.任务分析' {
    import ScalarValues::*;
    import VectorFunctions::sum;
    import '飞船.黑盒规格.结构'::'飞船';

    analysis def <CostEffectivenessAnalysis> '效度分析' {
        subject spacecraft : '飞船';
        in moe1 : Real :> moes;
        in moe2 : Real :> moes;
        in moe3 : Real :> moes;
        in moe4 : Real :> moes;
        attribute moes [1..*];
        return costEffectiveness : Real;
    }

    // calc def <CostEffectivenessAnalysis> '效度分析' {
    //     in moe1: Real :> moes;
    //     in moe2: Real :> moes;
    //     in moe3: Real :> moes;
    //     in moe4: Real :> moes;
    //     attribute moes[1..*];
    //     return costEffectiveness: Real;

    //     sum(moes)
    // }

    // calc def <ImageQualityAnalysis> '图像质量分析' {
    //     return :Real; 
    // }
}