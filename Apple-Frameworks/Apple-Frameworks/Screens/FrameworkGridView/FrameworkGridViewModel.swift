//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Himprakash Das on 11/05/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework?{
        didSet{ isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
}
