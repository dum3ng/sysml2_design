package '飞船.黑盒规格.结构' {
    import 'dsl'::*;
    import '辅助元素.数据'::*;
    import '辅助元素.接口'::'信号'::*;
    import '飞船.黑盒规格.行为'::*;

    #'感兴趣的系统' part def '飞船' {
        ref part '轨道' : '轨道';
        #tpm <mass> '质量';
        #tpm <size> '尺寸';
        #tpm <power> '功率';
        #tpm deltaV;
        #tpm maxRadiationLevel;
        #tpm <reliablity> '可靠性';
        // TODO: add more tpm
        // * operations
        action '控制高度' : '控制高度';
        // TODO: add more operations/actions
        // * ports
        port <solarRadiation_i_f> '太阳辐射接口';
        port <emRadation_i_f> '电磁辐射接口';
        port <observationSensor_i_f> '观测器接口';
        port <thrust_i_f> '喷射接口';
        port <gndCmd_data_i_f> '地面命令和数据接口';
        port <LVElectrical_i_f> '发射火箭电力接口';
        // TODO: add more ports
    }

    calc def <RegionInView> '视角区域' {
            language "js"
            /*
             *
             */
    }

    state def '飞船状态' {
        entry ;
        then state off;

        state <poweringUp> '功率提升';
        state <powringDown> '功率下降';

        state on {
            state {
                entry;
                    accept '发射'
                    then '发射中';

                state <launching> '发射中';
                    accept '飞船分离指令'
                    then '运行中'.'分离';

                state <operating> '运行中' {
                    state <deorbiting> '脱离轨道';
                        accept '脱轨完成'
                        then done;
                    state <seperating> '分离' {
                        do action : '控制分离';
                    }
                        accept '飞船分离完成'
                        then '运输';
                    state <transferring> '运输' {
                        do action : '展开天线';
                        exit action : '自测';
                    }
                        accept OnOrbit
                        then '在轨';
                    state <orbiting> '在轨' {
                        do action '维持在轨';
                        state s1 {
                            entry ;
                                then '探测中止';
                            state '探测中止';
                                accept '探测器开启指令'
                                if '视角区域'()
                                then '探测中';
                            state '探测中' {
                                do action '收集观测数据';
                            }
                            transition
                                first '探测中'
                                then '探测中止';
                        }
                        state s2 {
                            // TODO: no Choice in state ?
                            entry ;
                                then merge1;

                            state merge1;
                                then '连接不可用';
                            state <linkUnavailable> '连接不可用';
                                then '连接可用';

                            state <linkAvailable> '连接可用';
                                then '连接不可用';
                        }
                    }
                }
            }
            state {
                entry ;
                then state <normal> '正常';
                    accept '地面指令安全'
                    then safe;
                    accept '自主安全'
                    then 'safe';

                state <safe> '安全';
                    then normal;
            }
        }
        done;
    }
}