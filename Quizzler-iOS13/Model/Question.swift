//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by SRBD on 2/18/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    
    let title: String
    let answer: String
    
    init(q: String, a: String) {
        self.title = q
        self.answer = a
    }
}
