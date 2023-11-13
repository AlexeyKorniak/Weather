//
//  WeatherSummaryView.swift
//  Weather
//
//  Created by shreki on 2023/10/29.
//

import SwiftUI

struct WeatherSummaryView: View {
    
    var viewModel: ViewModel
    
    var body: some View {
        VStack {
          
            Text(viewModel.locationName)
                .font(Font.system(size: 30))
                .foregroundColor(.white)
                .shadow(radius: 4)
           
            Text(viewModel.currentTemp.fahrenheitString)
                .font(Font.system(size: 80))
                .foregroundColor(.white)
                .fontWeight(.thin)
                .shadow(radius: 4)
         
            Text(viewModel.currentWeatherCondition.description)
                .font(Font.system(size: 20))
                .foregroundColor(.white)
                .fontWeight(.medium)
                .shadow(radius: 4)
         
            Text("H:\(viewModel.currentDayHighTemp.fahrenheitString) L:\(viewModel.currentDayLowTemp.fahrenheitString)")
                .font(Font.system(size: 20))
                .foregroundColor(.white)
                .fontWeight(.medium)
                .shadow(radius: 4)

            }
            }
            }

#Preview {
    ScrollView {
        HStack {
            Spacer()
            WeatherSummaryView(viewModel: WeatherSummaryView.ViewModel.sunnyMockData)
            Spacer()
        }
        .padding(.top, 60)
    }
    .background(.blue)
    
}

    



extension WeatherSummaryView {
    
    class ViewModel: ObservableObject {
        let locationName: String
        let currentTemp: Temperature
        let currentWeatherCondition: WeatherCondition
        let currentDayHighTemp: Temperature
        let currentDayLowTemp: Temperature
        
        init(locationName: String,
             currentTemp: Temperature,
             currentWeatherCondition: WeatherCondition,
             currentDayHighTemp: Temperature,
             currentDayLowTemp: Temperature) {
            
            self.locationName = locationName
            self.currentTemp = currentTemp
            self.currentWeatherCondition = currentWeatherCondition
            self.currentDayHighTemp = currentDayHighTemp
            self.currentDayLowTemp = currentDayLowTemp
        }
    }
}
//Mockdata
extension WeatherSummaryView.ViewModel {
    static var sunnyMockData: WeatherSummaryView.ViewModel {
        return WeatherSummaryView.ViewModel(
            locationName: "Olmos Park",
            currentTemp: .F(68),
            currentWeatherCondition: .raining,
            currentDayHighTemp: .F(72),
            currentDayLowTemp: .F(52)
            
        )
    }
    static var rainingMockData: WeatherSummaryView.ViewModel {
        return WeatherSummaryView.ViewModel(
            locationName: "Olmos Park",
            currentTemp: .F(68),
            currentWeatherCondition: .partlyCloudy,
            currentDayHighTemp: .F(72),
            currentDayLowTemp: .F(52)
            
        )
    }
}


