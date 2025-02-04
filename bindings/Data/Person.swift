//
//  Person.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import Foundation

@Observable class Person: Identifiable {
    var name: String
    var categories: [ActivityCategory]
    var activities: [Activity]
    
    init(name: String, categories: [ActivityCategory], activities: [Activity]) {
        self.name = name
        self.categories = categories
        self.activities = activities
    }
}

extension Person {
    static var sampleData: [Person] =
        [
            Person(name: "Jane Doe", categories: ActivityCategory.sampleData, activities: [Activity.sampleData[0], Activity.sampleData[2]]),
            Person(name: "John Doe", categories: ActivityCategory.sampleData, activities: [Activity.sampleData[1]])
        ]
}
