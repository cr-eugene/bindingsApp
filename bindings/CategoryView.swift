//
//  CategoryView.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import SwiftUI

struct CategoryView: View {
    @Binding var category: ActivityCategory
    @State private var isPresentingTheEditView: Bool = false
    
    var body: some View {
        List() {
            HStack {
                Text(category.name)
                Spacer()
                Button(action: {
                    isPresentingTheEditView = true
                }) {
                    Image(systemName: "pencil")
                }
            }
        }
        .navigationTitle("Category")
        .sheet(isPresented: $isPresentingTheEditView) {
            CategoryEditSheet(targetCategory: $category, isPresentingTheEditView: $isPresentingTheEditView)
        }
    }
}

#Preview {
    CategoryView(category: .constant(ActivityCategory.sampleData[0]))
}
