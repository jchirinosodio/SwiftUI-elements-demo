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
                        } //: Navigation to FormView
                        NavigationLink(destination: FormView()) {
                            Text("Forms Example")
                        } //: Navigation to FormView
                        NavigationLink(destination: FormView()) {
                            Text("Forms Example")
                        } //: Navigation to FormView
                        NavigationLink(destination: FormView()) {
                            Text("Forms Example")
                        } //: Navigation to FormView
                        NavigationLink(destination: FormView()) {
                            Text("Forms Example")
                        } //: Navigation to FormView
                        NavigationLink(destination: FormView()) {
                            Text("Forms Example")
                        } //: Navigation to FormView
                    } //: Section A
                }.navigationBarTitle(Text("SwiftUI elements demo"))
            } //: Form
        }
    }
}
