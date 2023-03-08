package '发射火箭.结构' {
    import '发射运维.结构'::*;

    part def '发射火箭' {
        attribute <insertionAltitude> '入轨高度';
        attribute <inclinationError> '倾角误差';

        part : '分离环';
        ref part : '发射运维设备';
        port <load_i_f> '';
    }

    part def '分离环';
    part def '整流罩' {
        part : '分离环';
    }
}