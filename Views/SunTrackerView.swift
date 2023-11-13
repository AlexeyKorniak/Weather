//
//  SunTrackerView.swift
//  Weather
//
//  Created by elizavetavasileva on 2023/11/4.
//

import SwiftUI

struct SunTrackerView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            HStack {
                Image(systemName: "sunset.fill")
                    .foregroundColor(Color.currentTheme.sectionHeaderColor)
                    .shadow(radius: 1.0)

                
                Text("Sunset".uppercased())
                    .font(Font.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(Color.white.opacity(0.5))
                    .shadow(radius: 1.0)

            }
            .padding(.top, 10.0)
            .padding(.horizontal)
            .padding(.bottom, 8.0)


            Text("6:45PM") //time of sunset
                .font(Font.system(size: 32))
                .fontWeight(.regular)
                .foregroundColor(.white)
                .shadow(radius: 1.0)
                .padding(.horizontal)
           
            Spacer()
           
            WaveView(dayColor: Color(red: 0.65, green: 0.77, blue: 0.89),
                     nightColor: Color(red: 0.28, green: 0.45, blue: 0.63),
                     sunColor: .white,
                     horizonColor: Color(red: 0.69, green: 0.78, blue: 0.88))
            //    .foregroundColor(.green)
           
            Spacer()
           
            Text("Sunrise: 7:40AM") //Sunrise time
                .font(Font.system(size: 14))
                .fontWeight(.regular)
                .foregroundColor(.white)
                .shadow(radius: 1.0)
                .padding()
        }
        .background{
            VisualEffectView(effect: UIBlurEffect(style: .regular))
        }
        .cornerRadius(15.0)
        
    }
    }


#Preview {
    ScrollView {
        HStack {
            SunTrackerView()
                .aspectRatio(1.0, contentMode: .fill)
            SunTrackerView()
                .aspectRatio(1.0, contentMode: .fill)
        }
    }
    .padding()
    .background(.blue)
}
