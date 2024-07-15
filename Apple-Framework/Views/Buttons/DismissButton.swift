//
//  DismissButton.swift
//  Apple-Framework
//
//  Created by Aldrei Glenn Nuqui on 5/29/24.
//

import SwiftUI

struct DismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 45, height: 45)
            }
            .padding()
        }
    }
}

#Preview {
    DismissButton(isShowingDetailView: .constant(false))
}
