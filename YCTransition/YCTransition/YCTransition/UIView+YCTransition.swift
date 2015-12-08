//
//  UIView+YCTransition.h
//  YCTransition
//
//  Created by yaochao on 15/12/8.
//  Copyright © 2015年 YaoChao. All rights reserved.
//
/**
 *  TransitionType
 */
import UIKit

enum YCTransitionType : UInt {
    case Camera = 0
    //相机
    case Cube
    //立方体
    case Fade
    //淡入
    case MoveIn
    //移入
    case Flip
    //翻转
    case Curl
    //翻页
    case UnCurl
    //添页
    case Push
    //平移
    case Reveal
    //移走
    case Ripple
    //水波
    case Suck
}

/**
 *  TransitionDirection
 *  注意：有些动画效果不支持自定义方向
 */
enum YCTransitionDirection : UInt {
    case Left = 0
    // 从左向右
    case Right
    // 从右向左
    case Top
    // 从下向上
    case Bottom
}

extension UIView {
    /**
     *  添加转场动画
     *
     *  @param transitionType 转场动画类型
     *  @param direction      转场动画方向
     *  @param duration       转场动画时间
     *
     *  @return 返回这个view本身
     */
    func addTransition(transitionType: YCTransitionType, direction directionType: YCTransitionDirection, duration: Double) {
        var transitionArr: [String] = ["cameraIris", "cube", "fade", "moveIn", "oglFlip", "pageCurl", "pageUnCurl", "push", "reveal", "rippleEffect", "suckEffect"]
        var directionArr: [String] = ["fromLeft", "fromRight", "fromTop", "fromBottom"]
        let transition: CATransition = CATransition()
        transition.duration = duration
        transition.type = transitionArr[transitionType.hashValue]
        transition.subtype = directionArr[directionType.hashValue]
        self.layer.addAnimation(transition, forKey: nil)
    }
}