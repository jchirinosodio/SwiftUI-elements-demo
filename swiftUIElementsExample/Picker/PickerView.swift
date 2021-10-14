//
//  PickerView.swift
//  swiftUIElementsExample
//
//  Created by Jose Chirinos Odio on 2/10/21.
//

import SwiftUI

struct PickerView: View {
    // MARK: - Properties
    @State private var propertyPicked: String = "4%"
    // MARK: - Body
    var body: some View {
        VStack {
            VStack {
                Text("Simple picker")
                Picker("Hello world picker", selection: $propertyPicked) {
                    Text("3%")
                    Text("2%")
                    Text("1%")
                }
            } //: Simple picker
            VStack {
                Text("Computed values picker")
                Picker("Hello world picker", selection: $propertyPicked) {
                    ForEach(0 ..< 5) {
                        Text("\($0)%")
                        
                    }
                }
            } //: Computed Picker
            VStack {
                Text("Computed values picker")
                Picker("Hello world picker", selection: $propertyPicked) {
                    ForEach(0 ..< 5) {
                        Text("\($0)%")
                    }
                }
            } //: Computed Picker
        } //: Parent Stack View
    }
}
// MARK: - Preview
struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
