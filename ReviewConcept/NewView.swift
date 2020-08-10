//
//  NewView.swift
//  ReviewConcept
//
//  Created by Saad Anis on 8/10/20.
//

import SwiftUI

struct NewView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("fegr")) {
                Text("fegrh")
                }
            }
            .navigationBarTitle(Text("New Review"))
        }
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
