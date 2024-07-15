//
//  FrameworkDetailView.swift
//  Apple-Framework
//
//  Created by Aldrei Glenn Nuqui on 5/28/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            DismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            
            Spacer()
        
            FrameworkTitleView(framework: viewModel.framework)
            
            DetailedBody(framework: viewModel.framework)
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "Learn More")
            }
                
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                AFButton(title: "Learn More")
//            }
//            
            Spacer()
        }
//        .sheet(isPresented: $viewModel.isShowingSafariView, content: {
//            SafariView(url: URL(string: viewModel.framework.urlString)!)
//        })
    }
}

#Preview {
//    FrameworkDetailView(framework: MockData.sampleData, isShowingDetailView: .constant(false))
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleData, isShowingDetailView: .constant(false)))
}

struct DetailedBody: View {
    
    let framework: Framework
    
    var body: some View {
        Text(framework.description)
            .font(.body)
            .padding()
    }
}
