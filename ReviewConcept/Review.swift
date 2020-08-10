//
//  Review.swift
//  ReviewConcept
//
//  Created by Saad Anis on 8/7/20.
//

import Foundation

struct SingleLineTextAnswer {
    let question: String
    let answer: String
}

struct MultiLineTextAnswer {
    let question: String
    let answer: String
}
 
struct NumberAnswer {
    let question: String
    let answer: Double
}


struct QuestionAndType: Identifiable {
    let id = UUID()
    let question: String
    let type: Int // 1 for SL, 2 for ML, 3 for N.
}

struct Review {
    
    // The list of questions under the singleline text type.
    let singleLineArray: [SingleLineTextAnswer]
    
    // The list of questions under the multiline text type.
    let multiLineArray: [MultiLineTextAnswer]

    // The list of questions under the number type.
    let numberArray: [NumberAnswer]
}

class Reviews {
    let reviews: [Review] = []
    
    // The active list of questions for the review.
    let templateQuestions: [QuestionAndType] = [QuestionAndType(question: "Word?", type: 1),QuestionAndType(question: "Lines?", type: 2),QuestionAndType(question: "Number?", type: 3)]
    
//    func createNewReview(singleLineArray: [SingleLineTextAnswer], multiLineArray: [MultiLineTextAnswer], numberArray: [NumberAnswer]) {
//    }
}

