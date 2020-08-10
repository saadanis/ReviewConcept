//
//  TemplateView.swift
//  ReviewConcept
//
//  Created by Saad Anis on 8/10/20.
//

import SwiftUI

struct TemplateView: View {
    
    let reviews = Reviews()
    
    var body: some View {
        NavigationView {
//            VStack {
                List {
                    ForEach(reviews.templateQuestions) { question in
                        NavigationLink(destination: Text(question.question)) {
                            Label(question.question, systemImage: getImageForType(number: question.type))
                            
                        }
                    }
                    Button(action: {
                        // Show a new question sheet.
                    }){
                        Label("New Question", systemImage: "plus")
                            .foregroundColor(.accentColor)
                    }
                }
//            }
            .navigationBarTitle(Text("Template"))
        }
    }
    
    func getImageForType(number: Int) -> String {
        switch number {
        case 1: return "textformat.alt"
        case 2: return "paragraphsign"
        default: return "number"
        }
    }
}

struct TemplateView_Previews: PreviewProvider {
    static var previews: some View {
        TemplateView()
    }
}
