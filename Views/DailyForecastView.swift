//
//  DailyForecastView.swift
//  Weather
//
//  Created by shreki on 2023/10/29.
//

import SwiftUI

struct DailyForecastView: View {
    var body: some View {
        VStack(alignment: .leading)  {
            HStack {
                Image(systemName: "calendar")
                    .foregroundColor(Color.white.opacity(0.5))
                Text("10-Day Forecast".uppercased())
                    .font(Font.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(Color.currentTheme.sectionHeaderColor)
            }
                Divider()
                .foregroundColor(Color.white.opacity(0.5))
                ForEach(0..<9) { _ in
                    HStack {
                        Text("Today")
                            .foregroundColor(.white)
                        Spacer(minLength: 60)

    
                        Image(systemName: "sun.max.fill")
                            .foregroundColor(.yellow)
                           

                      Spacer()
                            .frame(maxWidth: 50.0)
                        
                        Text("52º")
                            .foregroundColor(Color.white.opacity(0.5))
                        
                        let gradient = LinearGradient(colors: gradientColors, startPoint: .leading, endPoint: .trailing)
                        
                        ProgressView(value: 0.5)
                            .progressViewStyle(RangedProgressView(range: 0.2...0.8, foregroundColor: AnyShapeStyle(gradient),
                                                                  backgroundColor: Color(red: 0.25, green: 0.35, blue: 0.71).opacity(0.2)))
                            .frame(minWidth: 100, maxHeight: 4.0)
                        
                        Text("72º")
                            .foregroundColor(.white)

                    
                    }
                    Divider()
                        .foregroundColor(Color.white.opacity(0.5))
                    
                }
            }
            .padding(10)

            .background{
                VisualEffectView(effect: UIBlurEffect(style: .regular))
            }
            .cornerRadius(15.0)
            
        }
    var gradientColors = [Color(red: 0.39, green: 0.8, blue: 0.74), Color(red: 0.96, green: 0.8, blue: 0.0)]
    }
    #Preview {
        ScrollView {
            
            DailyForecastView()
        }
        .padding(.horizontal)
        .background(.blue)
    }
    
    

