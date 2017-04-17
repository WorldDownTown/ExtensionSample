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
    }
}
