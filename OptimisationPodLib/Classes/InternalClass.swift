//
//  PrivateClass.swift
//  OptimisationCrashDemo
//
//  Created by priders on 2023/9/20.
//

import Foundation

//FIXME: Look Here
//"When it comes to Swift coding, I've noticed that there are two possible solutions to bypass this bug.
//1、removing one of the two static variables in PublicClass.
//2、 changing the visibility of InternalClass from internal to public."


//FIXME: Opening the comment can fix it.
//public
class InternalClass: NSObject {
    

    //FIXME: Opening the comment can fix it.
    //public
    static let shared = InternalClass()
    
    private override init() {}
    
    func getSomeValue() -> String? {
        return "NONE"
    }
    
}
