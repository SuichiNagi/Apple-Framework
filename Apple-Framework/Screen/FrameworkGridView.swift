//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Aldrei Glenn Nuqui on 5/28/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
//                        NavigationLink(value: framework) {
//                            FrameworkTitleView(framework: framework)
//                        }
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
//            .navigationDestination(for: Framework.self) { framework in
//                FrameworkDetailView(framework: framework)
//            }
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView))
            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
