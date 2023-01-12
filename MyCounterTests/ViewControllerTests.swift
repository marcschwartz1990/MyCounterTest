//
//  ViewControllerTests.swift
//  MyCounterTests
//
//  Created by Marc-Developer on 1/12/23.
//

import XCTest
@testable import MyCounter

class ViewControllerTests: XCTestCase {
    
    var counterVC: ViewController!
    
    override func setUp() {
        counterVC = ViewController()
    }
    
    override func tearDown() {
        counterVC = nil
    }

    func testTouchIncrementButton_senderHasValidTitleLabel() {
        let sender = UIButton()
        sender.titleLabel?.text = ""
        
        counterVC.touchIncrementButton(sender)
        XCTAssertNotNil(sender.titleLabel?.text != nil)
    }
}
