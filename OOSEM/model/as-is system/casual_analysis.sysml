package CasualAnalyais {
    import CauseAndEffect::*;

    occurrence responseTime;
    occurrence falseAlarms;
    occurrence missedDetections;
    occurrence convictionRate;
    occurrence intruderLocation;
    occurrence operationalAvailability;
    occurrence SecurityEffectiveness;

    #multicausation connection {
        end #cause :>> responseTime;
        end #cause :>> falseAlarms;
        end #cause :>> missedDetections;
        end #cause :>> convictionRate;
        end #cause :>> intruderLocation;
        end #cause :>> operationalAvailability;
        end #effect :>> SecurityEffectiveness;
    }

    occurrence softwareUpgradeCost;
    occurrence hardwareInstallationCost;
    occurrence InstallationCost;

    #multicausation connection {
        end #cause :>> softwareUpgradeCost;
        end #cause :>> hardwareInstallationCost;
        end #effect :>> InstallationCost;
    }

    occurrence monitoringCost;
    occurrence repairCost;
    occurrence ServiceCost;

    #multicausation connection {
        end #cause :>> monitoringCost;
        end #cause :>> repairCost;
        end #effect :>> ServiceCost;
    }

    occurrence SystemCost;
    #multicausation connection {
        end #cause :>> InstallationCost;
        end #cause :>> ServiceCost;
        end #effect :>> SystemCost;
    }

    occurrence smallBusiness;
    occurrence multiFamily;
    occurrence singleFamily;
    occurrence MarketSize;

    #multicausation connection {
        end #cause :>> smallBusiness;
        end #cause :>> multiFamily;
        end #cause :>> singleFamily;
        end #effect :>> MarketSize;
    }

    occurrence CustomerSatisfaction;

    #multicausation connection {
        end #cause :>> SecurityEffectiveness;
        end #cause :>> SystemCost;
        end #effect :>> CustomerSatisfaction;
    }

    occurrence LackOfSales;
    #multicausation connection {
        end #cause :>> CustomerSatisfaction;
        end #cause :>> MarketSize;
        end #cause :>> LackOfSales;
    }
}