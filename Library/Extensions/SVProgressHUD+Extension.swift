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

        public static func show(maskType: SVProgressHUDMaskType = .none) {
            SVProgressHUD.setDefaultMaskType(maskType)
            SVProgressHUD.show()
        }

        public static func showSuccess(status: String, maskType: SVProgressHUDMaskType = .none) {
            SVProgressHUD.setDefaultMaskType(maskType)
            SVProgressHUD.showSuccess(withStatus: status)
        }

        public static func showError(status: String, maskType: SVProgressHUDMaskType = .none) {
            SVProgressHUD.setDefaultMaskType(maskType)
            SVProgressHUD.showError(withStatus: status)
        }

        public static func showProgress(progress: Float, maskType: SVProgressHUDMaskType = .none) {
            SVProgressHUD.setDefaultMaskType(maskType)
            SVProgressHUD.showProgress(progress)
        }
    }
}
