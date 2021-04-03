//
//  XCTestCase+MemoryLeakTracking.swift
//  EssentialDeveloperFeedTests
//
//  Created by Livia Vasconcelos on 03/04/21.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject,
                             file: StaticString = #filePath,
                             line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak.", file: file, line: line)
        }
    }
}
