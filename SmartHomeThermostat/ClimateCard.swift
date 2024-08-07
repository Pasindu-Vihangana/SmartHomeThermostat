//
//  ClimateCard.swift
//  SmartHomeThermostat
//
//  Created by Pasindu Vihangana on 2024-08-04.
//

import SwiftUI

struct ClimateCard: View {
    var iconName: String
    var index: String
    var measure: String
    var body: some View {
        ZStack {
            // MARK: Card
            RoundedRectangle(cornerRadius: 22.0, style: .continuous)
                .fill(Color("Card Background"))
                .shadow(color: Color("Card Shadow"), radius: 40, x: 0, y: 20)
                .overlay {
                    // MARK: Card Border
                    RoundedRectangle(cornerRadius: 22.0, style: .continuous)
                        .stroke(.white.opacity(0.1), lineWidth: 1.0)
                }
            
            VStack(spacing: 10) {
                // MARK: Circle Icon
                Image(systemName: iconName)
                    .font(.title2.weight(.semibold))
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                    .background(LinearGradient([Color("Temperature Ring 1"), Color("Temperature Ring 2")], startPoint: .top, endPoint: .bottom))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(spacing: 8) {
                    // MARK: Index
                    Text(index)
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    // MARK: Measure
                    Text(measure)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.6)
                }
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 10)
        }
        .frame(width: 144, height: 164)
    }
}

#Preview {
    ClimateCard(iconName: "humidity.fill", index: "Inside Humidity", measure: "50%")
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color("Background"))
}
