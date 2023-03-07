package 'dsl' {
    import Parts::*;
    import Metaobjects::SemanticMetadata;

    enum def '开发状态' {
        COTS;
        'Developed Item';
    }

    metadata def '感兴趣的系统' :> SemanticMetadata {
        baseType = parts meta SysML::Usage;
    }

    metadata def '分析' :> SemanticMetadata;
    metadata def '原因' :> SemanticMetadata;
    metadata def '故障模式' :> SemanticMetadata;
    metadata def '一般类别' :> SemanticMetadata;
    metadata def '硬件' :> SemanticMetadata {
        attribute '开发状态' : '开发状态';
    }
    metadata def '逻辑' :> SemanticMetadata;
    metadata def '机械' :> SemanticMetadata;
    metadata def '轨道' :> SemanticMetadata {
        baseType = parts meta SysML::Usage;
    }
    metadata def '软件' :> SemanticMetadata;
    metadata def '存储' :> SemanticMetadata;
    metadata def '子系统' :> SemanticMetadata;
    metadata def '测试组件' :> SemanticMetadata;
    metadata def 'tpm' :> SemanticMetadata;
    metadata def '验证目标' :> SemanticMetadata;
    metadata def '违反' :> SemanticMetadata;
}