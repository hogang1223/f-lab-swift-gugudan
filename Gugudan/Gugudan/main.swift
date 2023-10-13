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

// 5. 클래스로

struct Multiple {
    let num1: Int
    let num2: Int
    var multipleNum: Int {
        get {
            return self.num1 * self.num2
        }
    }
    func output() {
        print("\(self.num1) X \(self.num2) = \(self.multipleNum)")
    }
}

class Gugudan {
    // 내가 이미 출력한 적이 있는 친구면 굳이 다시 계산할 필요가 없지
    var dans = [Int: [Multiple]]()
    func outputGugudan(column: Int) {
        if let dan = dans[column] {
            for multiple in dan {
                multiple.output()
            }
        }
        else {
            var rows = [Multiple]()
            for row in 1...9 {
                let multiple = Multiple(num1: column, num2: row)
                multiple.output()
                rows.append(multiple)
            }
            dans[column] = rows
        }
    }
}
