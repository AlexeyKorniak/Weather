//
//  AirQualityView.swift
//  Weather
//
//  Created by elizavetavasileva on 2023/11/8.
//

import SwiftUI

struct AirQualityView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            HStack {
                Image(systemName: "aqi.low")
                    .foregroundColor(Color.currentTheme.sectionHeaderColor)
                    .shadow(radius: 2.0)
                    .font(Font.system(size: 12))
                    .fontWeight(.medium)
                    .padding(.bottom, 10)
                
                Text("AIR QUALITY".uppercased())
                    .foregroundColor(Color.currentTheme.sectionHeaderColor)
                    .shadow(radius: 2.0)
                    .font(Font.system(size: 12))
                    .fontWeight(.medium)
                    .padding(.bottom, 10)
                
            }
            
            Text("24 - Good")
                .font(Font.system(size: 24))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.bottom, 10)
            
            
            Text("Air quality index is 24, which is similar to yesterday at about this time.")
                .font(Font.system(size: 13))
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.bottom, 32)
            
            ProgressView(value: 0)
                .progressViewStyle(RangedProgressView(range: 0...1.0, 
                                                      
                                                      
                                                      foregroundColor: AnyShapeStyle(uvGradient),
                                                      backgroundColor: Color(red: 0.54, green: 0.77, blue: 0.99)))
                .frame(maxHeight: 5.0)
            
            
        }
        .padding(16)
        .background{
            VisualEffectView(effect: UIBlurEffect(style: .regular))
        }
        .cornerRadius(15.0)
    }
    
    var uvGradient: LinearGradient {
        return LinearGradient(colors: [
            .green,
            .yellow,
            .orange,
            .red,
            .pink,
            .purple
        ], startPoint: .leading, endPoint: .trailing)
    }
}

#Preview {
    VStack {
        AirQualityView()
            .padding()
        Spacer()
    }
}
