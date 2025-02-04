//
//  Activity.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import Foundation

@Observable class Activity:Identifiable {
    var name: String = ""
    var categories: [ActivityCategory] = []
    
    init(name: String, categories: [ActivityCategory]) {
        self.name = name
        self.categories = categories
    }
}

extension Activity {
    static var sampleData: [Activity] =
        [
            Activity(name: "Running", categories: [ActivityCategory.sampleData[1]]),
            Activity(name: "Chess", categories: [ActivityCategory.sampleData[0]]),
            Activity(name: "Chess Boxing", categories: [ActivityCategory.sampleData[0], ActivityCategory.sampleData[1]])
        ]
}
