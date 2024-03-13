//
//  HeaderView.swift
//  TaskDivine
//
//  Created by Tomass Tel on 12/03/2024.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let angle: Double
    let background: Color
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 48))
                    .foregroundColor(Color.white)
                    .bold()
            }
            .padding(.top, 80)
        }
        .frame(width: 1200,height: 400)
        .offset(y: -180)
    }
}

#Preview {
    HeaderView(title: "Title",
               angle: 15,
               background: .purple )
}
