package '飞船.黑盒规格.行为' {
    action def '控制加速度' {
        in deltaV;
        out '3axisThrust';
    }
    action def '控制高度' {
        in pyr;
        out '3axisTorque';
        // attribute 
    }
    action def '控制分离';
}