package '发射运维.行为' {
    import ScalarValues::Real;
    action def <CommunicateWithLV> '和发射火箭通信' {
        in param1 : Real;
        out param2;
    }
}