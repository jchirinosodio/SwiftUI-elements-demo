//
//  swiftUIElementsExampleApp.swift
//  swiftUIElementsExample
//
//  Created by Jose Chirinos Odio on 1/10/21.
//

import SwiftUI

@main
struct swiftUIElementsExampleApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Form {
                    Section {
                        NavigationLink(destination: FormView()) {
                            Text("Forms Example")
                        }
                        NavigationLink(destination: FormAndTexView()) {
                            Text("Forms with TextFields")
                        }
                        NavigationLink(destination: PickerView()) {
                            Text("Pickers")
                        }
                        NavigationLink(destination: QuestionView()) {
                            Text("Questions and answers")
                        }
                        NavigationLink(destination: PokemonView()) {
                            Text("URL Session")
                        }
                        
                    } //: Section A
                }.navigationBarTitle(Text("SwiftUI elements demo"))
            } //: Form
        }
    }
}
