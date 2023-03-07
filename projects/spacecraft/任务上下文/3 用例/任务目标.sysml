package '用例' {
    import '辅助元素.视角'::*;
    // usecase is case, and is requirement.
    use case <DetectAndMonitorForesetFireInUSAndCanada> '在美加探测和监控森林火灾' {
        include usecase2;

        actor fs : '森林服务';
    }

    use case <usecase2> '准实时提供森林火灾数据' {
        actor ope : '操作员';
        actor fd : '消防部门';
    }

    use case <uc3> '存档数据' {
        actor ope : '操作员';
    }

    use case <uc4> '检测并管理火灾卫星Ⅱ的健康和安全状况' {
        actor ope : '操作员';
    }
}