package '需求' {
    import ScalarValues::Real;
    import ScalarValues::Integer;
    import ISQ::*;
    requirement '任务需求' {
        requirement '性能' {
            requirement '天气' {
                doc /*
                     * 在少量云雾中可以工作
                     */
            }
            requirement '可见性' {
                doc /*
                     * 50 米的可见性
                     */
            }
            requirement '地理位置精度' {
                doc /* 1 km 的地理位置精度*/
            }
        }

        requirement '覆盖范围' {
            doc /* 覆盖美国指定的森林区域，一天至少两次 */
        }

        requirement '分析能力' {
            doc /* 在8小时内，识别出要发生的火灾，假阳性低于10%*/
        }

        requirement '及时性' {
            doc /* 在5分钟之内终端用户发送分析数据*/
        }

        requirement '次要任务' {
            doc /* 控制森林的平均温度变化在+/-2℃以内 */
        }
        requirement '可执行性' {
            doc /* 时间发生3分钟内可执行命令。 下载存储的覆盖区域的单元。*/
        }

        requirement '任务设计寿命' {
            doc /* */
            attribute life : DurationValue = 8[d];
        }
        requirement '系统可访问性' {
            doc /* 排除天气条件下95%. 最大24小时的停机时间*/
            attribute availibility : Real = 0.95;
            attribute downTime : TimeValue = 24[h];
        }

        requirement '生存能力' {
            doc /* 只在自然环境下工作. 不在辐射带工作*/
        }

        requirement '数据分发' {
            doc /* 世界范围内最多500个火情办公室, 2000个护林员, 最大100个同时在线用户*/
            attribute maxCountOfOffice : Integer = 500;
            attribute maxCountOfRanger : Integer = 2000;
            attribute maxSimulaneousUser : Integer = 100;
        }

        requirement '数据内容,形式,格式' {
            doc /*
                 * 位置和范畴使用维度/经度表示,用于局部绘图.
                 * 平均温度测量单位为40平米.
                 */
        }
        requirement '用户设备' {
            doc /*
                 * 10x20 公分的显示设备,具有放缩和触摸控制.
                 * 内置GPS精度的地图
                 */
        }

        requirement '价格' {
            doc /* 非经常费用和经常费用*/
            attribute nonRecurring : Real = 10000000;
            attribute recurring : Real = 3000000[dollar / y];
        }

        requirement '进度' {
            doc /* 3年以内可运行*/
            attribute operationDuration : TimeValue = 3[y];
        }

        requirement '风险' {
            doc /* 成功率高于90% */
        }

        requirement '法规' {
            doc /* 轨道碎片民用管制*/
        }

        requirement '政治' {
            doc /* 对公众要求采取行动保持响应*/
        }

        requirement '接口' {
            doc /* 和NOAA地面站可互操作*/
        }

        requirement '开发约束' {
            doc /* 无*/
        }
    }

    requirement '轨道需求' {
        requirement '轨道操作需求' {
            requirement '轨道高度' {}
            requirement '轨道平面' {}
        }

        requirement '脱离轨道需求' {}
        requirement '转移轨道需求' {}
    }

    requirement '飞船数量' {}

    requirement '再访问间隔' {}
    requirement '运载火箭数量' {}
}