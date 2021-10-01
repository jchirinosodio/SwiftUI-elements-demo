//
//  FormAndTexView.swift
//  swiftUIElementsExample
//
//  Created by Jose Chirinos Odio on 1/10/21.
//

import SwiftUI

struct FormAndTexView: View {
    @State private var testVariable: String = ""
    
    var body: some View {
        Form {
            TextField("Enter some test data", text: $testVariable)
            Text("Did you just write?: \(testVariable)")
        }.navigationTitle(Text("Forms & TextFields"))
    }
}

struct FormAndTexView_Previews: PreviewProvider {
    static var previews: some View {
        FormAndTexView()
    }
}
