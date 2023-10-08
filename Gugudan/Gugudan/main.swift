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

// 1. 스크립트 버전으로 5단
for column in 1...5 {
    let gugudan = """
\(column) X 1 = \(column * 1)
\(column) X 2 = \(column * 2)
\(column) X 3 = \(column * 3)
\(column) X 4 = \(column * 4)
\(column) X 5 = \(column * 5)
\(column) X 6 = \(column * 6)
\(column) X 7 = \(column * 7)
\(column) X 8 = \(column * 8)
\(column) X 9 = \(column * 9)
"""
    print(gugudan)
}
