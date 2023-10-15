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

//  6. Functional Programming 형태로

func gugudan(start: Int, end: Int, checkMax: (Int, Int) -> Bool) {
    func outputgugudan(column: Int, row: Int) {
        print("\(column) X \(row) = \(column * row)")
        if checkMax(row, end) {
            outputgugudan(column: column, row: row + 1)
        } else if checkMax(column, end) {
            outputgugudan(column: column + 1, row: start)
        }
    }
    outputgugudan(column: start, row: start)
}

gugudan(start: 1, end: 9, checkMax: { $0 < $1 })
