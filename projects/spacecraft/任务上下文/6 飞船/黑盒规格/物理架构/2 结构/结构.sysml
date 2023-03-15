package '飞船.物理架构.结构' {
    import dsl::'感兴趣的系统';

    import '飞船.黑盒规格.结构'::*;
    import '飞船.物理架构.子系统.电力子系统.结构'::*;
    import '飞船.物理架构.子系统.负载子系统.结构'::*;

    #'感兴趣的系统' part def '物理飞船' :> '飞船' {
        part payload : '负载子系统';
        part power : '电力子系统';
    }

    part def SystemConfiguration :> '物理飞船';
}