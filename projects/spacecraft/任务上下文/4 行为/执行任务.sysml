package '行为.执行任务' {
    import '辅助元素.接口'::'信号'::*;

    action def '星箭分离' {
        action accept  '飞船分离指令';
        then action a:'初始化分离机制';      
        then  action c : '控制分离';
    }
}