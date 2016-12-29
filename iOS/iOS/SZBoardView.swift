//
//  SZBoardView.swift
//  iOS
//
//  Created by sunze on 2016/12/29.
//  Copyright © 2016年 sunzeboy. All rights reserved.
//

import UIKit
import React

class SZBoardView: UIView {

    override func awakeFromNib() {
        let jsCodeLocation = URL(string: "http://127.0.0.1:8081/index.ios.bundle?platform=ios")
        let mockData:NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "RNHighScores",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        
        rootView?.frame = self.bounds
        addSubview(rootView!)
    }

}
