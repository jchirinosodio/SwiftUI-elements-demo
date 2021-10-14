//
//  ChoiceTextView.swift
//  swiftUIElementsExample
//
//  Created by Jose Chirinos Odio on 7/10/21.
//

import SwiftUI

struct ChoiceButtonView: View {
    let title: String
    let isAnswerCorrect: Bool
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    let callback: () -> Void
    
    init(buttonTitle: String, isAnswerCorrect: Bool, callback: @escaping () -> Void) {
        self.title = buttonTitle
        self.isAnswerCorrect = isAnswerCorrect
        self.callback = callback
    }
    
    var body: some View {
        Button(action: {}) {
            Text("This is a Button in SwiftUI")
        }
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceButtonView(buttonTitle: "Choice Text!", isAnswerCorrect: true) {
            print("button clicked")
        }
    }
}
