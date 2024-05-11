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
            HStack{
                Spacer()
                
                Button{
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label)) //.label makes it adaptible to light and dark mode
                        .imageScale(.large)
                        .frame(width: 44, height: 44) //made slightly larger than the original icon for ease of use
                }
            }
            .padding()
            
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            Button{
                isShowingSafariView = true
            }label:{
                AFButton(title: "Learn More")
            }
            .padding(.bottom, 30)
            
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
