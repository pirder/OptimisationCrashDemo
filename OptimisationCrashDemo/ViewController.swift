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
            debugPrint("data \(data)")
        }
        OPUtil.prepareAll()
    }
}


extension ViewController {
    private func getSomeValueInVC() -> LibData? {
        PublicClass.getSomeValue()
    }
}
