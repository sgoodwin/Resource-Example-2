import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Resource_Example_2Tests.allTests),
    ]
}
#endif
