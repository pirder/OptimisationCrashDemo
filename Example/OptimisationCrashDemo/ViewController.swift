//
//  ViewController.swift
//  OptimisationCrashDemo
//
//  Created by priders on 2023/9/20.
//

import UIKit
import OptimisationPodLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let data = getSomeValueInVC() {
            print("data \(data)")
        }
        
    }
}


extension ViewController {
    private func getSomeValueInVC() -> String? {
#if DEBUG
        return ""
#else
        //If calling getSomeValue in PublicClass results in a "Build Failed" error.
        return PublicClass.getSomeValue()
#endif
    }
}
