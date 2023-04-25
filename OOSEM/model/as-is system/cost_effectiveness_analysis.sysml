package CostEffectivenessAnalysis {
    import OperationalDomainAsIs::*;
    import ScalarValues::*;
    import ISQ::*;
    import ValueTypes::Dollar;

    requirement def CostEffectivenessObjective {
        subject costEffectiveness : Real;
    }

    analysis CostEfeectivenessAnalysis {
        subject seo : SecurityEnterprise;

        objective costEffectiveness : CostEffectivenessObjective;

        action calcCostEffectiveness: OperationalCostEffectivenessEquation {

        }
    }

    calc def OperationalCostEffectivenessEquation {
        in availibility : Real;
        in emerTime : DurationValue;
        in pic : Real;
        in oc : Dollar;

        return costEffectiveness : Real;
        // TODO: should be a weighted sum of moes
        costEffectiveness = availibility + emerTime + pic + oc;
    }
}