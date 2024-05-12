//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Himprakash Das on 11/05/24.
//

import SwiftUI

struct FrameworkTitleView: View{
    
    let framework: Framework
    
    var body: some View{
        HStack{
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}
#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
