package '用例.操作用例' {
    // ! extend 关系在sysml2 中尚不支持
    use case '执行任务' {
        include uc2;
        include uc3;
        include uc4;
    }

    use case <uc2> '发射火箭';
    use case <uc3>;
    use case <uc4>;
}