//
//  CounterTests.swift
//  MyCounterTests
//
//  Created by Marc-Developer on 1/11/23.
//

import XCTest
@testable import MyCounter

class CounterTests: XCTestCase {
    
    var counter: Counter!
    
    override func setUp() {
        counter = Counter()
    }
    
    override func tearDown() {
        counter = nil
    }

    func testCounter_InitializesAtZero() {
        XCTAssertEqual(counter.count, 0, "Counter class does not initialize with a count of 0")
    }
    
    func testIncrement_incrementsByAmountGiven() {
        counter.count = 5
        counter.increment(by: 1)
        
        XCTAssertTrue(counter.count == 6, "Counter did not increment by 1")
    }
}

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
