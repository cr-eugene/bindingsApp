//
//  CategoryEditSheet.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import SwiftUI

struct CategoryEditSheet: View {
    @State private var name: String = ""
    
    var targetCategory: ActivityCategory
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
                        Button("Update") {
                            isPresentingTheEditView = false
                            targetCategory.name = name
                        }
                    }
                }
        }
        .onAppear {
            name = targetCategory.name
        }
    }
}

#Preview {
    CategoryEditSheet(targetCategory: ActivityCategory.sampleData[0], isPresentingTheEditView: .constant(true))
}
