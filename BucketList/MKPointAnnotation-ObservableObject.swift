//
//  MKPointAnnotation-ObservableObject.swift
//  BucketList
//
//  Created by Gary Watson on 19/07/2020.
//  Copyright © 2020 Gary Watson. All rights reserved.
//

import MapKit
extension MKPointAnnotation: ObservableObject {
    public var wrappedTitle: String {
        get {
            self.title ?? "Unknown value"
        }
        set {
            title = newValue
        }
    }
    public var wrappedSubtitle: String {
        get {
            self.subtitle ?? "Unknown value"
        }
        set {
            subtitle = newValue
        }
    }
}
