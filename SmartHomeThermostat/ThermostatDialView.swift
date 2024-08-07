//
//  ThermostatDialView.swift
//  SmartHomeThermostat
//
//  Created by Pasindu Vihangana on 2024-08-04.
//

import SwiftUI

struct ThermostatDialView: View {
    private let outerDialSize: CGFloat = 200
    private let innerDialSize: CGFloat = 172
    private let setPointSize: CGFloat = 15
    var degrees: CGFloat = 0
    
    var body: some View {
        ZStack {
            // MARK: Outer Dial
            Circle()
                .fill(LinearGradient([Color("Outer Dial 1"), Color("Outer Dial 2")]))
                .frame(width: outerDialSize, height: outerDialSize)
                .shadow(color: .black.opacity(0.3), radius: 60, x: 0, y: 30)
                .shadow(color: .black.opacity(0.2), radius: 16, x: 0, y: 8)
                .overlay {
                    // MARK: Outer Dial Boarder
                    Circle()
                        .stroke(LinearGradient([.white.opacity(0.2), .black.opacity(0.19)]), lineWidth: 1)
                }
                .overlay {
                    // MARK: Outer Dial Inner Shadow
                    Circle()
                        .stroke(.white.opacity(0.1), lineWidth: 4)
                        .blur(radius: 8.0)
                        .offset(x: 3, y: 3)
                        .mask {
                            Circle()
                                .fill(LinearGradient([.black, .clear]))
                        }
                }
            
            // MARK: Inner Dial
            Circle()
                .fill(LinearGradient([Color("Inner Dial 1"), Color("Inner Dial 2")]))
                .frame(width: innerDialSize, height: innerDialSize)
            
            // MARK: Inner Dial
            Circle()
                .fill(LinearGradient([Color("Temperature Setpoint 1"), Color("Temperature Setpoint 2")]))
                .frame(width: setPointSize, height: setPointSize)
                .frame(width: innerDialSize, height: innerDialSize, alignment: .top)
                .offset(x: 0, y: 7.5)
                .rotationEffect(.degrees(degrees + 180))
                .animation(.easeInOut(duration: 1.0), value: degrees)
        }
    }
}

#Preview {
    ThermostatDialView()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
}
