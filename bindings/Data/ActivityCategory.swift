//
//  Category.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import Foundation

class ActivityCategory: Identifiable, Hashable {
    var id: UUID = UUID()
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    static func == (lhs: ActivityCategory, rhs: ActivityCategory) -> Bool {
        return lhs.id == rhs.id
    }


    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
    }
}

extension ActivityCategory {
    static var sampleData: [ActivityCategory] =
        [
            ActivityCategory(name: "Intellectual"),
            ActivityCategory(name: "Physical")
        ]
}
