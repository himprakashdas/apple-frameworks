//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Himprakash Das on 11/05/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework:Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label:{
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
                    .fontWeight(.bold)
            }
            .buttonStyle(.bordered)
            .controlSize(.extraLarge)
            .buttonBorderShape(.roundedRectangle(radius: 10))
            .padding(.bottom, 40)
            .tint(.red)
            
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
