//
//  SafariView.swift
//  Apple-Framework
//
//  Created by Aldrei Glenn Nuqui on 5/28/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
        
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
