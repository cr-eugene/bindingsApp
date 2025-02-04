//
//  ContentView.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var people: [Person]
    
    @State private var isPresentingTheEditView: Bool = false
    @State private var tmpPerson: Person = Person(name: "", categories: [], activities: [])

    var body: some View {
        NavigationStack {
            List {
                Section(header: HStack {
                    Text("People")
                    Spacer()
                    Button(action: {
                        isPresentingTheEditView = true
                    }) {
                        Image(systemName: "plus")
                    }
                }) {
                    ForEach(people) { person in
                        NavigationLink(destination: PersonView(person: person)) {
                            Text(person.name)
                        }
                    }
                }
            }
            .sheet(isPresented: $isPresentingTheEditView) {
                PersonNewSheet(targetPeople: $people, isPresentingTheEditView: $isPresentingTheEditView)
            }
        }
    }
}

#Preview {
    ContentView(people: .constant(Person.sampleData))
}
