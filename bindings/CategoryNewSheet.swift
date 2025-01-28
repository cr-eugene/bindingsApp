//
//  CategoryNewSheet.swift
//  bindings
//
//  Created by Eugene Thompson on 1/28/25.
//

import SwiftUI

struct CategoryNewSheet: View {
    @State private var name: String = ""
    
    @Binding var categories: [ActivityCategory]
    @Binding var isPresentingTheEditView: Bool
    
    var body: some View {
        NavigationStack {
            CategoryEditView(name: $name)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss") {
                            isPresentingTheEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add") {
                            isPresentingTheEditView = false
                            categories.append(ActivityCategory(name: name))
                        }
                    }
                }
        }
    }
}

#Preview {
    CategoryNewSheet(categories: .constant(Person.sampleData[0].categories), isPresentingTheEditView: .constant(true))
}
