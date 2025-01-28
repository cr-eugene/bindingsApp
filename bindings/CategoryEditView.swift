//
//  CategoryEditView.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import SwiftUI

struct CategoryEditView: View {
    @Binding var name: String
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Name", text: $name)
                }
            }
        }
        .navigationTitle("Category Edit")
    }
}

#Preview {
    CategoryEditView(name: .constant("Foo"))
}
