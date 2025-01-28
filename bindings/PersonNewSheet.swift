//
//  PersonNewSheet.swift
//  bindings
//
//  Created by Eugene Thompson on 1/28/25.
//

import SwiftUI

struct PersonNewSheet: View {
    @State private var name: String = ""
    
    @Binding var targetPeople: [Person]
    @Binding var isPresentingTheEditView: Bool
    
    var body: some View {
        NavigationStack {
            PersonEditView(name: $name)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss") {
                            isPresentingTheEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add") {
                            isPresentingTheEditView = false
                            targetPeople.append(Person(name: name, categories: [], activities: []))
                        }
                    }
                }
        }
    }
}

#Preview {
    PersonNewSheet(targetPeople: .constant(Person.sampleData), isPresentingTheEditView: .constant(true))
}
