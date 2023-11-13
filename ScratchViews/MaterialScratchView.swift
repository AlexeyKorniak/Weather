//
//  MaterialScratchView.swift
//  Weather
//
//  Created by elizavetavasileva on 2023/11/9.
//

import SwiftUI
import UIKit

struct MaterialScratchView: View {
    let effect: UIBlurEffect
    let lable: String
    var body: some View {
        VisualEffectView(effect: effect)
            .frame(minHeight: 100)
            .cornerRadius(15)
            .overlay {
                VisualEffectView(effect: vibrancyEffect)
                    .overlay {
                        Text(lable)
                            .foregroundColor(.white)
                    }
               // Text(lable)
            }
    }
    
        var vibrancyEffect: UIVibrancyEffect{
            return UIVibrancyEffect(blurEffect: effect, style: .secondaryFill)
        }
    }

#Preview {
    ScrollView {
        VStack {
            ForEach(0..<21) { index in
                MaterialScratchView(effect: UIBlurEffect(style: UIBlurEffect.Style(rawValue: index)!),
                                    lable: "\(index)")

            }
        }
    }
    .padding()
    .background(LinearGradient(colors: Color.currentTheme.dawnGradientColors, startPoint: .top, endPoint: .bottom))
}
