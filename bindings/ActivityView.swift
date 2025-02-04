//
//  ActivityView.swift
//  bindings
//
//  Created by Eugene Thompson on 1/26/25.
//

import SwiftUI

struct ActivityView: View {
    var activity: Activity
    
    var body: some View {
        List(activity.categories) { category in
            Text(category.name)
        }
        .navigationTitle(activity.name)
    }
}

#Preview {
    ActivityView(activity: Activity.sampleData[2])
}
