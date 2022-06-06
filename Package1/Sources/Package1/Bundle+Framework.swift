//
//  Bundle+Framework.swift
//  
//
//  Created by Olli Tapaninen on 16.2.2021.
//

import Foundation
private class BundleFinder {}

extension Foundation.Bundle {
    /// Returns the resource bundle associated of the current Swift module.
    static var framework: Bundle = BundleHelper.findBundle(packageName: "Package1", packageLocalType: BundleFinder.self)
}

public struct BundleHelper {
    public static func findBundle<T: AnyObject>(packageName: String, packageLocalType: T.Type) -> Bundle {
        let localBundleName = "\(packageName)_\(packageName)"
        let libraryBundleName = "LocalPackages_\(packageName)"

        let candidates = [
            Bundle.main.resourceURL,
            Bundle(for: T.self).resourceURL,
            Bundle.main.bundleURL,
            Bundle(for: T.self).resourceURL?
                .deletingLastPathComponent()
                .deletingLastPathComponent()
        ]

        for candidate in candidates {
            let localBundlePath = candidate?.appendingPathComponent(localBundleName + ".bundle")
            if let bundle = localBundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }

            let libraryBundlePath = candidate?.appendingPathComponent(libraryBundleName + ".bundle")
            if let bundle = libraryBundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }

        fatalError("Unable to find bundle named: \(localBundleName) or \(libraryBundleName)")
    }
}

