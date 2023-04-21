package OperationalDomainAsIs {
    // TODO:
    part def OperationalDomain {
        doc /* 领域元素包括一个安全组织，和多个社区 */
        part s : Site [1..*] ordered;
        part seo : SecurityEnterprise;
    }

    part def Site {
        /* 入侵者 */
        part intr : Intruder [0..*];
        /* 单户住宅 */
        part sfr : SingleFamilyResidence;
        /* 住户 */
        part occ : Occupant [1..*];
    }

    part def SecurityEnterprise {
        part securitySystem: SecuritySystem;
        part commNw: communicationNetwork;
        part emerServ: EmergencyServices;
    }

    part def Intruder {
        attribute signature;
    }
    part def SingleFamilyResidence {

        ref part securityInstallation : SiteInstallation;
    }
    part def Occupant;
    part def SecuritySystem {
        doc /* 安全系统由多个在社区中安装的系统组成*/

        part sitei : SiteInstallation [0..*] ordered;
        part cms: CentralMonitroingStation;
    }
    part def communicationNetwork {}
    part def EmergencyServices {
        part dips: Dispatcher[1..*];
        part police: Police [1..*];
    }
    part def SiteInstallation {}
    part def CentralMonitroingStation {}
    part def Dispatcher;
    part def Police;
}