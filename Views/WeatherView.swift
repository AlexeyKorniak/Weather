//
//  ContentView.swift
//  Weather
//
//  Created by shreki on 2023/10/28.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ScrollView {
            VStack {
                WeatherSummaryView(viewModel: weatherSummaryViewModel)
                    .padding(.top, 60)
                    .padding(.bottom, 40)
                
                HourlyForecastView(viewModel: HourlyForecastView.ViewModel.mock)
                
                DailyForecastView()
                
                AirQualityView()
                
                HStack {
                    UVIndexView()
                        .aspectRatio(1.0, contentMode: .fill)
                    SunTrackerView()
                        .aspectRatio(1.0, contentMode: .fill)
                    
                }
                
            }
            .padding(.horizontal)
        }
        .background(backgroundStyle)
    }

    var backgroundStyle: some ShapeStyle {
        return LinearGradient(colors: [
            Color(red: 0.23, green: 0.33, blue: 0.52),
            Color(red: 0.70, green: 0.53, blue: 0.58),
        ],
                              startPoint: .top, endPoint: .bottom)
    }
   
        
        var weatherSummaryViewModel: WeatherSummaryView.ViewModel {
            return WeatherSummaryView.ViewModel.sunnyMockData
        }
        
    }
    
    struct WeatherView_Previews: PreviewProvider {
        static var previews: some View {
            WeatherView()
        }
    }

