//
//  UITestingSnapshotTests.swift
//  UITestingSnapshotTests
//
//  Created by Claudio Madureira Silva Filho on 2/7/20.
//  Copyright © 2020 Claudio Madureira Silva Filho. All rights reserved.
//

import XCTest
import FBSnapshotTestCase
@testable import UITestingSnapshot

class UITestingSnapshotTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        recordMode = false
    }

    func testExample() {
        let view = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 50, height: 50)))
        view.backgroundColor = .green
        if view.backgroundColor != .red {
            FBSnapshotVerifyView(view)
        }
    }
    
    func testLabelPosition() {
        let view = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 200)))
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Hi"
        label.sizeToFit()
        label.frame.size = .init(width: view.frame.width * 0.5, height: view.frame.height * 0.5)
        let minutes = Calendar.current.component(.minute, from: Date())/15
        label.center = .init(x: view.frame.midX, y: view.frame.midY * CGFloat(minutes))
        
        view.addSubview(label)
        
        FBSnapshotVerifyView(view)
    }

}
