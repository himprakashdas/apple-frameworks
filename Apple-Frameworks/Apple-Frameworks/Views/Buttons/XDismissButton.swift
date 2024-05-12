//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Himprakash Das on 11/05/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
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

    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
