//
//  PersonEditView.swift
//  bindings
//
//  Created by Eugene Thompson on 1/28/25.
//

import SwiftUI

struct PersonEditView: View {
    @Binding var name: String
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Name", text: $name)
                }
            }
        }
        .navigationTitle("Person Edit")
    }
}

#Preview {
    PersonEditView(name: .constant("Foo"))
}
