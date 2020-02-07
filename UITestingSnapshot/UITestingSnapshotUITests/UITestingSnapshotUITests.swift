//
//  UITestingSnapshotUITests.swift
//  UITestingSnapshotUITests
//
//  Created by Claudio Madureira Silva Filho on 2/7/20.
//  Copyright © 2020 Claudio Madureira Silva Filho. All rights reserved.
//

import XCTest
import FBSnapshotTestCase

class UITestingSnapshotUITests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        recordMode = true
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
