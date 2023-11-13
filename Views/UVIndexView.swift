//
//  UVIndexView.swift
//  Weather
//
//  Created by elizavetavasileva on 2023/11/4.
//

import SwiftUI

struct UVIndexView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color.currentTheme.sectionHeaderColor)
                    .shadow(radius: 1.0)

                Text("UV Index".uppercased())
                    .font(Font.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(Color.currentTheme.sectionHeaderColor)
                    .shadow(radius: 1.0)

                
            }
            Text("0") //UVindex value
                .font(Font.system(size: 36))
                .fontWeight(.regular)
                .foregroundColor(.white)
                .shadow(radius: 1.0)

            Text("Low") //Index rating
                .font(Font.system(size: 20))
                .fontWeight(.medium)
                .foregroundColor(.white)

            Spacer()
           
            ProgressView(value: 0)
                .progressViewStyle(RangedProgressView(range: 0...1.0, foregroundColor: AnyShapeStyle(uvGradient), backgroundColor: Color(red: 0.54, green: 0.77, blue: 0.99)))
                .frame(maxHeight: 5.0)
            Spacer()
            
            Text("Use sun protection 11AM-4PM.") //recommendation
                .font(Font.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(.white)
                .shadow(radius: 1.0)

        }
        .padding(10.0)
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
            .purple
        ], startPoint: .leading, endPoint: .trailing)
    }
}

#Preview {
    ScrollView {
        HStack {
            UVIndexView()
                .aspectRatio(1.0, contentMode: .fill)
            UVIndexView()
                .aspectRatio(1.0, contentMode: .fill)

        }
    }
    .padding()
    .background(.blue)
}
