//
//  TDDstartTests.swift
//  TDDstartTests
//
//  Created by SANGMIN NAM on 2022/07/03.
//

import XCTest
@testable import TDDstart

class TDDstartTests: XCTestCase {
//    각 Unit Test를 위해 모두 given - when - then 이라는 구조를 거칠 것입니다.
//    given - 테스트를 준비하기 위해 변수를 초기화 및 입력하거나 정의하는 단계입니다.
//    when - given 단계에서 준비한 변수를 활용해 실제 액션을 실행하는 단계입니다.
//    then - 마지막으로 XCTest의 함수를 이용해서 테스트를 진행하는 단계입니다.
    
    //given
    var converter: Converter?
    override func setUpWithError() throws {
        converter = Converter()
    }
    
    func testConversionForOne() {
//        //given
//        var converter = Converter()
        
        //when
        let result = converter!.convert(1) // convert라는 함수가 존재하지 않으므로 컴파일에러
        
        //then
        XCTAssertEqual(result, "I", "1에 관한 convert결과 틀림")
    }
    
    func testConversionForTwo() {
        let result = converter!.convert(2)
        XCTAssertEqual(result, "II", "2에 관한 convert결과 틀림")
    }

    func testConversionFive() {
        let result = converter!.convert(5)
        XCTAssertEqual(result, "V", "5에 관한 convert결과 틀림")
    }

    func testConversionForSix() {
        let result = converter?.convert(6)
        XCTAssertEqual(result, "VI", "6에 관한 convert결과 틀림")
    }

    func testConversionForTen() {
        let result = converter?.convert(10)
        XCTAssertEqual(result, "X", "10에 관한 convert결과 틀림")
    }
    
}
