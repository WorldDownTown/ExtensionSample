//
//  Extension.swift
//  ExtensionSample
//
//  Created by Keisuke Shoji on 2017/04/17.
//  Copyright © 2017年 Keisuke Shoji. All rights reserved.
//

public struct Extension<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol ExtensionCompatible {

    associatedtype CompatibleType

    var ex: Extension<CompatibleType> { get set }
    static var ex: Extension<CompatibleType>.Type { get set }
}

public extension ExtensionCompatible {

    public var ex: Extension<Self> {
        get {
            return Extension(self)
        }
        set {
            // this enables using Extension to "mutate" base object
        }
    }

    public static var ex: Extension<Self>.Type {
        get {
            return Extension<Self>.self
        }
        set {
            // this enables using Extension to "mutate" base type
        }
    }
}
