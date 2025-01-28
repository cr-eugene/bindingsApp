//
//  PersonView.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import SwiftUI

struct PersonView: View {
    @Binding var person: Person

    @State private var isPresentingNewCategroryView: Bool = false
    @State private var tmpCategory: ActivityCategory = ActivityCategory(name: "")

    var body: some View {
        VStack {
            List {
                Section(header: HStack {
                    Text("Activities")
                }) {
                    ForEach($person.activities) { $activity in
                        NavigationLink(destination: ActivityView(activity: $activity)) {
                            Text(activity.name)
                        }
                    }
                }
                
                Section(header: HStack {
                    Text("Categories")
                    Spacer()
                    Button(action: {
                        isPresentingNewCategroryView = true
                    }) {
                        Image(systemName: "plus")
                    }
                }) {
                    ForEach($person.categories) { $category in
                        NavigationLink(destination: CategoryView(category: $category)) {
                            Text($category.wrappedValue.name)
                        }
                    }
                }
            }
        }
        .navigationTitle(person.name)
        .sheet(isPresented: $isPresentingNewCategroryView) {
            CategoryNewSheet(categories: $person.categories, isPresentingTheEditView: $isPresentingNewCategroryView)
        }
    }
}

#Preview {
    PersonView(person: .constant(Person.sampleData[0]))
}
