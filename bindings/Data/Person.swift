//
//  Person.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import Foundation

struct Person: Identifiable, Hashable {
    var id: UUID = UUID()
    var name: String
    var categories: [ActivityCategory]
    var activities: [Activity]
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id
    }


    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
    }
}

extension Person {
    static var sampleData: [Person] =
        [
            Person(name: "Jane Doe", categories: ActivityCategory.sampleData, activities: [Activity.sampleData[0], Activity.sampleData[2]]),
            Person(name: "John Doe", categories: ActivityCategory.sampleData, activities: [Activity.sampleData[1]])
        ]
}
