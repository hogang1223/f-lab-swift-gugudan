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

// 입력받아서 출력
func outputGugudanWithReadLine() {
    print("몇 단을 출력할까요? (숫자만 입력해주세요)")
    let readLine = readLine()
    guard let column = readLine, Int(column) != nil else {
        print("숫자만 입력해주세요.")
        return
    }
    gugudan(column: Int(column)!)
}

func gugudan(column: Int) {
    for row in 1...9 {
        gugudan(column: column, row: row)
    }
}

func gugudan(column: Int, row: Int) {
    print("\(column) X \(row) = \(column * row)")
}

func gugudan() {
    var column = 1
    var row = 1
    while column < 10 {
        gugudan(column: column, row: row)
        row += 1
        if row > 9 {
            row = 1
            column += 1
        }
    }
}
