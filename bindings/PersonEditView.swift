//
//  PersonEditView.swift
//  bindings
//
//  Created by Eugene Thompson on 1/28/25.
//

import SwiftUI

struct PersonEditView: View {
    @Binding var name: String
    var actionString: String
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name", text: $name)
                }
            }
        }
        .navigationTitle("Person \(actionString)")
    }
}

#Preview {
    PersonEditView(name: .constant("Foo"), actionString: "New")
}
