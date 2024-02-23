//
//  DetailView.swift
//  AppleFrameworks
//
//  Created by Aman Kumar on 23/02/24.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                print("hi")
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .padding()
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
