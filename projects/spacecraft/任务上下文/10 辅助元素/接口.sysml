package '辅助元素.接口' {
    /**
     * 信号和数据的区别:
     * - 信号不会被系统所处理
     * - 数据会被系统处理
     */

    package '信号' {
        item def <SpacecraftSeparationCommand> '飞船分离指令';
        item def <SpacecraftSeparationComplete> '飞船分离完成';
        item def <GroundCmdSafe> '地面指令安全';
        item def <AutonomouseSafe> '自主安全';
        item def <Launch> '发射';
        item def <OnOrbit> '在轨';
        item def <SensorOnCommand> '探测器开启指令';
        item def <DeorbitComplete> '脱轨完成';
    }

    package 'IO定义' {
        item def <Command> '指令';
        item def '地面指令';
        item def <Maneuver> '调整指令';
        item def '轨道调整指令';
        item def '高度调整指令';
        item def '扭矩指令';
        item def '电源指令';

        item def <Telemetry> '遥测';
        item def <FuelTLM> '燃料遥测';
        item def <PowerTLM> '电源遥测';

        item def <RF> '射频' {
            attribute '频率';
            attribute '波长';
        }

        item def '电能';
        item def '开关电能' :> '电能';
        item def '非开关电能' :> '电能';
    }
}