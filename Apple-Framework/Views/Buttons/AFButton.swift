//
//  AFButton.swift
//  Apple-Framework
//
//  Created by Aldrei Glenn Nuqui on 5/28/24.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.blue)
            .foregroundStyle(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Sample")
}
