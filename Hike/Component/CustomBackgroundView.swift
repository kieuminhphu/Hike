//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Kieu Phu on 13/03/2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            
            Color.customGreenDark
                .clipShape(.rect(cornerRadius: 40))
                .offset(y: 12)
            
            // MARK: - 2. LIGTH
            
            Color.customGreenLight
                .clipShape(.rect(cornerRadius: 40))
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 1. SURFACE
            
            LinearGradient(colors: [Color.colorGreenLight,
                                    Color.customGreenMedium],
                           startPoint: .top,
                           endPoint: .bottom
            )
            .clipShape(.rect(cornerRadius: 40))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
