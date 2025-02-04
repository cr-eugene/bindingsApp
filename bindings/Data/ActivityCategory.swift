//
//  Category.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import Foundation

@Observable class ActivityCategory: Identifiable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

extension ActivityCategory {
    static var sampleData: [ActivityCategory] =
        [
            ActivityCategory(name: "Intellectual"),
            ActivityCategory(name: "Physical")
        ]
}
