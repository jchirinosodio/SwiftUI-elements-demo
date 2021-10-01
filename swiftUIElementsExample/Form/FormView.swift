//
//  FormView.swift
//  swiftUIElementsExample
//
//  Created by Jose Chirinos Odio on 1/10/21.
//

import SwiftUI

// How to create a list view / form with a navigation bar title
struct FormView: View {
    var body: some View {
        VStack {
            NavigationView {
                Form {
                    Section {
                        Text("Test 1")
                        Text("Test 2")
                        Text("Test 3")
                        Text("Test 4")
                        Text("Test 5")
                        Text("Test 6")
                    } //: Section
                }.navigationTitle(Text("Forms and elements")) //: Form
            }//: NavigationView
            Image("formsViewImage")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
                .padding(.horizontal, 10)
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
