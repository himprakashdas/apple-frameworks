//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Himprakash Das on 11/05/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>)-> SFSafariViewController{
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(
        _ uiViewController: SFSafariViewController,
        context: UIViewControllerRepresentableContext<SafariView>){}
}
