//
//  QuestionView.swift
//  swiftUIElementsExample
//
//  Created by Jose Chirinos Odio on 7/10/21.
//

import SwiftUI

struct QuestionView: View {
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        // View implementation
//        ZStack {
            //mainColor.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
//                Spacer()
             
                    Button {
                        print("BB")
                    } label: {
                        Text("HOLA MUNDO")
                    }
//                    ForEach(0..<question.possibleAnswers.count) { index in
//                        ChoiceButtonView(buttonTitle: question.possibleAnswers[index], isAnswerCorrect: question.correctAnswerIndex == index ? true : false, callback: {
//                            print("AHHAHAHA")
//                        })
//                    }
//                }
            
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
