//
//  main.swift
//  Gugudan
//
//  Created by hogang on 2023/10/08.
//

import Foundation

/*
구구단을 리팩토링하자.
 1. 스크립트 버전으로 5단
 2. 중첩 루프 버전으로 1단 ~ 9단
 3. 함수로 바꿔서
 4. 구조체
 5. 클래스로
 6. Functional Programming 형태로
 7. 깃허브에 올리고 코드 리뷰 요청하기
 */


// 3. 함수로 바꿔서

outputGugudanWithReadLine()

// 입력받아서 출력
func outputGugudanWithReadLine() {
    print("몇 단을 출력할까요? (숫자만 입력해주세요)")
    guard let column = readLine(), Int(column) != nil else {
        print("숫자만 입력해주세요.")
        return
    }
    dan(Int(column)!)
}

// 재귀함수 사용
func dan(_ column: Int) {
    recursiveGugudan(column: column)
}

func recursiveGugudan(column: Int, row: Int = 9) {
    guard row != 0 else { return }
    recursiveGugudan(column: column, row: row - 1)
    outputMultipleOfTwoNumbers(column, row)
}

// 두 수의 곱을 출력하는 함수
func outputMultipleOfTwoNumbers(_ num1: Int, _ num2: Int) {
    print("\(num1) X \(num2) = \(num1 * num2)")
}

// while문으로 출력
func gugudan() {
    var column = 1
    var row = 1
    while column < 10 {
        outputMultipleOfTwoNumbers(column, row)
        row += 1
        if row > 9 {
            row = 1
            column += 1
        }
    }
}
