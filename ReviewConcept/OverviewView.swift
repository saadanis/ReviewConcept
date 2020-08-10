//
//  OverviewView.swift
//  ReviewConcept
//
//  Created by Saad Anis on 8/7/20.
//

import SwiftUI

struct OverviewView: View {
    let reviews = Reviews()
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(reviews.templateQuestions) { question in
                        HStack {
                            Text(question.question)
                            Spacer()
                        }
                        .padding(.all, 10)
                        .background(RoundedRectangle(cornerRadius: 15.0, style: .continuous).foregroundColor(.secondary).opacity(0.5))
                    }
                    .padding(.all, 10)
                }
            }
            .navigationBarTitle(Text("Overview"))
        }
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView()
    }
}
