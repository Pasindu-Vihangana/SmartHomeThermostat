//
//  ThermostatSummeryView.swift
//  SmartHomeThermostat
//
//  Created by Pasindu Vihangana on 2024-08-04.
//

import SwiftUI

struct ThermostatSummeryView: View {
    var status: Status
    var showStatus: Bool
    var temperature: CGFloat
    
    var body: some View {
        VStack(spacing: 0) {
            // MARK: Temperature
            Text("\(temperature, specifier: "%.0f")°C")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            // MARK: Temperature Status
            Text(status.rawValue)
                .font(.headline)
                .foregroundColor(.white)
                .opacity(showStatus ? 0.6 : 0)
            
            // MARK: Eco Leaf
            Image(systemName: "leaf.fill")
                .foregroundColor(.green)
            
        }
        .padding(.top, 40)
        .padding(.bottom, 40)
    }
}

#Preview {
    ThermostatSummeryView(status: .heating, showStatus: true, temperature: 22)
        .background(Color("Inner Dial 2"))
}
