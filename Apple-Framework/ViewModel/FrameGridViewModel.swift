//
//  FrameGridViewModel.swift
//  Apple-Framework
//
//  Created by Aldrei Glenn Nuqui on 5/28/24.
//

import SwiftUI

final class FrameGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
