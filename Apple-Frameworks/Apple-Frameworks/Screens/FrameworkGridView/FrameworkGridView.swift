//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Himprakash Das on 11/05/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()

    
    var body: some View {
        NavigationView{
                List{
                    ForEach(MockData.frameworks){framework in
                        NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                                        isShowingDetailView: $viewModel.isShowingDetailView)){
                            FrameworkTitleView(framework: framework)
                        }
                    } //ForEach will track the Hashable and Identifiable framework automatically with the id
                }
            .navigationTitle("Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}


