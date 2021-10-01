//
//  FormView.swift
//  swiftUIElementsExample
//
//  Created by Jose Chirinos Odio on 1/10/21.
//

import SwiftUI

// How to create a list view / form with a navigation bar title
struct FormView: View {
    // MARK: - Properties
    @State private var add100Rows: Bool = false
    // MARK: - Body
    var body: some View {
        
        Form {
            Section {
                Text("Test 1")
                Text("Test 2")
                Text("Test 3")
                Text("Test 4")
                Text("Test 5")
                Text("Test 6")
            } //: Section - 1
            Section  {
                Button {
                    add100Rows = !add100Rows
                } label: {
                    Text(!add100Rows ? "Want to add 30 rows more?" : "Nevermind").foregroundColor(Color.red
                    )
                }
                if(add100Rows == true) {
                    ForEach(0..<30) {
                        Text("New item added: \($0+1)")
                    }
                }
            } //: - Section 2
            Text("Code Example:")
            Image("formsViewImage")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
        }
    } //: Form
}
// MARK: - Preview
struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
