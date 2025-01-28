//
//  Activity.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import Foundation

struct Activity:Identifiable, Hashable {
    var id: UUID = UUID()
    var name: String
    var categories: [ActivityCategory]
    
    static func == (lhs: Activity, rhs: Activity) -> Bool {
        return lhs.id == rhs.id
    }


    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
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
