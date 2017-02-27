//
//  ViewController.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/02/27.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import UIKit
import Library
import SVProgressHUD

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("===== 1 =====")
        print(Date().string())
        print("===== 2 =====")
        print(Date().string(format: "yyyy/MM/dd"))
        print("===== 3 =====")
        print(Date(dateString: "2017/02/27", format: "yyyy/MM/dd") ?? "")
        print("===== 4 =====")
        print(["key1": 1] + ["key1": 0, "key2": 2])
        print("===== 5 =====")
        let million: Int = 1_000_000
        print(million.formattedJPString)
        print(million.JPYString)
        print(million.USDString)
        print("===== 6 =====")
        print(UIColor.iq.pink)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        SVProgressHUD.iq.showSuccess(status: "success")
    }
}
