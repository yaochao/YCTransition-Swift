//
//  ViewController.h
//  YCTransition
//
//  Created by yaochao on 15/12/8.
//  Copyright © 2015年 YaoChao. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonClick() {
        let secondController: UIViewController = UIViewController()
        secondController.title = "secondController"
        secondController.view.backgroundColor = UIColor.greenColor()
        self.navigationController!.view.addTransition(YCTransitionType.Curl, direction: YCTransitionDirection.Bottom, duration: 0.5)
        self.navigationController!.pushViewController(secondController, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}