//
//  ViewController.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/02/27.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import UIKit
import Library
import Benchmark
import SVProgressHUD

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let million: Int = 1_000_000
        ⏲{
            for _ in (0...1_000_000) {
                _ = million.JPYString
            }
        }
        ⏲{
            for _ in (0...1_000_000) {
                _ = million.ex.JPYString
            }
        }
        // 1
        // a: 4.86677
        // b: 4.75620

        // 2
        // a: 4.55241
        // b: 4.68822

        // 3
        // a: 4.56739
        // b: 4.67935

        // 4
        // a: 4.56891
        // b: 4.69419

        // 5
        // a: 4.57511
        // b: 4.70295

        //(4.86677+4.55241+4.56739+4.56891+4.57511)/5=4.626118
        //(4.75620+4.68822+4.67935+4.69419+4.70295)/5=4.704182
        //4.704182-4.626118=0.078064
        //1000000*0.016/0.078064=204960.032793605
    }
}
