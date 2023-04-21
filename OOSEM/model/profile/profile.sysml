package OOSEM {
    package semantic {
        doc /*
             * the OOSEM-specific profile
             */
        import Parts::*;
        import Attributes::*;
        import Connections::*;
        import Requirements::requirementChecks;
        import Metaobjects::SemanticMetadata;

        metadata def 'analysis' :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        // ---caused by---
        connection def CausedBy :> BinaryConnection;
        abstract connection causedBys : CausedBy :> binaryConnections;

        metadata def <causedBy> CausedBySemanticMetadata :> SemanticMetadata {
            baseType = causedBys meta SysML::Usage;
        }
        // ---

        metadata def configurationItem :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def data :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def document :> SemanticMetadata {
            baseType = Part meta SysML::Definition;
        }

        metadata def failureMode :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def file :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def hardware :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def logical :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def mop :> SemanticMetadata {
            :> annotatedElement : SysML::AttributeUsage;
            baseType = parts meta SysML::Usage;
        }
        metadata def moe :> SemanticMetadata {
            :> annotatedElement : SysML::AttributeUsage;
            baseType = parts meta SysML::Usage;
        }
        metadata def nodeLogical :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def nodePhysical :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def operator :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def procedure :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def software :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def status :> SemanticMetadata {
            :> annotatedElement : SysML::PartUsage;
            baseType = parts meta SysML::Usage;
        }
        metadata def store :> SemanticMetadata {
            :> annotatedElement : SysML::PartUsage;
            baseType = parts meta SysML::Usage;
        }
        metadata def systemOfInterest :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def testComponent :> SemanticMetadata {
            baseType = parts meta SysML::Usage;
        }
        metadata def testObjective :> SemanticMetadata {
            baseType = requirementChecks meta SysML::Usage;
        }

        // ---violates
        connection def ViolatesConnection :> BinaryConnection;
        abstract violatesConnections :> binaryConnections;
        metadata def violates :> SemanticMetadata {
            baseType = violatesConnections meta SysML::Usage;
        }
    }
}