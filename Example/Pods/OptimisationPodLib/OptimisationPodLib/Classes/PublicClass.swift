//
//  PublicClass.swift
//  OptimisationCrashDemo
//
//  Created by priders on 2023/9/20.
//

import Foundation

@objc public class PublicClass: NSObject {
    
    //FIXME: Look Here
    //"When it comes to Swift coding, I've noticed that there are two possible solutions to bypass this bug.
    //1、removing one of the two static variables in PublicClass.
    //2、 changing the visibility of InternalClass from internal to public."
    @objc public static var versionCode: String = "1.0.0"
    
    @objc public static var fetchInterval: UInt = 180
    
    @objc public static func getSomeValue() -> String? {
        InternalClass.shared.getSomeValue()
    }
}
