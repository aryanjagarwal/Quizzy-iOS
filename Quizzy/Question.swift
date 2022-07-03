//
//  Question.swift
//  Quizzy
//
//  Created by Aryan Jagarwal on 03/07/22.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
