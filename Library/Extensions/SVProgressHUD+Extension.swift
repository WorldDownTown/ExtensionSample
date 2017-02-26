//
//  SVProgressHUD+Extension.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/02/27.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import SVProgressHUD

public extension SVProgressHUD {

    public struct iq {
        public static func setup() {
            SVProgressHUD.setDefaultStyle(.custom)
            SVProgressHUD.setFont(UIFont.boldSystemFont(ofSize: 14.0))
            SVProgressHUD.setForegroundColor(UIColor.iq.pink)
            SVProgressHUD.setBackgroundColor(UIColor.white.withAlphaComponent(0.9))
            SVProgressHUD.setMinimumDismissTimeInterval(2.0)
        }
    }
}
