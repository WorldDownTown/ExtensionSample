//
//  Kingfisher+Extension.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/02/27.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

import Kingfisher

public extension Kingfisher where Base: Any {

//    public struct iq {

        static func setup() {
            ImageCache.default.maxDiskCacheSize = UInt(100 * 1024 * 1024)   // 100 MB
            ImageCache.default.maxCachePeriodInSecond = TimeInterval(60.0 * 60.0 * 24.0 * 7.0)  // キャッシュ有効期限 7日
            ImageDownloader.default.downloadTimeout = 60.0  // 60秒
        }
//    }
}
