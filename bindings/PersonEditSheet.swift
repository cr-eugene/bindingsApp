//
//  PersonEditSheet.swift
//  bindings
//
//  Created by Eugene Thompson on 1/28/25.
//

import SwiftUI

struct PersonEditSheet: View {
    @State private var name: String = ""
    
    @Binding var targetPerson: Person
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
                        Button("Update") {
                            isPresentingTheEditView = false
                            targetPerson.name = name
                        }
                    }
                }
        }
        .onAppear {
            name = targetPerson.name
        }
    }
}

#Preview {
    PersonEditSheet(targetPerson: .constant(Person.sampleData[0]), isPresentingTheEditView: .constant(true))
}
