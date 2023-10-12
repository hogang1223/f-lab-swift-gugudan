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

struct Multiple {
    let num1: Int
    let num2: Int
    var multipleNum: Int {
        get {
            return self.num1 * self.num2
        }
    }
    
    func outputMultipleOfTwoNums() {
        print("\(self.num1) X \(self.num2) = \(self.multipleNum)")
    }
    
}

// 4. 구조체
struct Gugudan {
    let max = 9
    // 1~9단까지 출력하기
    func outputGugudan(column: Int = 1, row: Int = 1) {
        // 단수가 max값보다 크면 중지
        guard column <= max else { return }
        
        let multiple = Multiple(num1: column, num2: row)
        multiple.outputMultipleOfTwoNums()
        
        if row < max {
            outputGugudan(column: column, row: row + 1)
        }
        else {
            outputGugudan(column: column + 1)
        }
    }
}

let gugudan = Gugudan()
gugudan.outputGugudan()

/*
 구조체를 사용하는 것이 좋은 경우.
 1. 서로 연관된 몇개의 기본 데이터 타입들을 캡슐화하여 묶는 것이 목적일 때
 2. 갭슐화된 데이터에 상속이 필요하지 않을 때
 3. 캡슐화된 데이터를 전달하거나 할당하는 과정에서 참조 방식보다는 값이 복사되는 것이 합리적일 때
 4. 캡슐화된 원본 데이터를 보존해야할 때
 */
