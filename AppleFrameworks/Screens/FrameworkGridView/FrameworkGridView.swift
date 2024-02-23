//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Aman Kumar on 23/02/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination:
                                    FrameworkDetailView(framework: framework,
                                    isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Framework")
        }
        .allowsTightening(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
