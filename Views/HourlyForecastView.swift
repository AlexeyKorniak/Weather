//
//  HourlyForecastView.swift
//  Weather
//
//  Created by shreki on 2023/10/29.
//

import SwiftUI

struct HourlyForecastView: View {
   
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            
            Text(viewModel.currentWeatherSummary)
                .font(Font.system(size: 13))
                .fontWeight(.medium)
                .shadow(radius: 2.0)
                .foregroundColor(.white)
                .padding(.bottom, 6)
            Divider()
                .padding(.bottom, 10)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(viewModel.hourlySnapshots, id: \.time) { snapshot in
                        VStack {
                            
                            Text("Now")
                                .foregroundColor(.white)
                                .font(Font.system(size: 15))
                                .fontWeight(.semibold)
                            
                            snapshot.condition.image
                                .foregroundColor(.white)
                                
                                .padding(.vertical, 4)

                            Text(snapshot.temperature.fahrenheitString)
                                .foregroundColor(.white)
                                .font(Font.system(size: 20))
                                .fontWeight(.medium)
                        }
                        .padding(.trailing, 8)
                    }
                }
            }
            .scrollIndicators(.never)

        }
        .padding(14)
        .background{
            VisualEffectView(effect: UIBlurEffect(style: .regular))
        }
        .cornerRadius(15.0)
    }
    
}
struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView {UIVisualEffectView() }
    func updateUIView( _ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
    
    
}
            #Preview {
                ScrollView {
                    HourlyForecastView(viewModel: HourlyForecastView.ViewModel.mock)
                }
                .padding()
                .background(LinearGradient(colors: Color.currentTheme.dawnGradientColors,
                                           startPoint: .top, endPoint: .bottom))
            }
        
extension HourlyForecastView {
    class ViewModel: ObservableObject {
        let currentWeatherSummary: String
        let hourlySnapshots: [WeatherSnapshot]
        
        init(currentWeatherSummary: String, hourlySnapshots: [WeatherSnapshot]) {
            self.currentWeatherSummary = currentWeatherSummary
            self.hourlySnapshots = hourlySnapshots
        }
    }
}




//Mockdata
extension HourlyForecastView.ViewModel {
    static var mock: HourlyForecastView.ViewModel {
        let currentDate = Date.now

        return HourlyForecastView.ViewModel(currentWeatherSummary: "Sunny conditions will continue for the rest of the day. Wind gusts are up to 18 mph.",
                                            hourlySnapshots: [
                                                WeatherSnapshot(time: currentDate,
                                                                condition: .sunny,
                                                                temperature: .F(68)),
                                                
                                                WeatherSnapshot(time: currentDate.addingTimeInterval(60*60),
                                                                condition: .sunny,
                                                                temperature: .F(70)),
                                                
                                                WeatherSnapshot(time: currentDate.addingTimeInterval(60*60*60),
                                                                condition: .cloudy,
                                                                temperature: .F(71)),
                                            ])
    }
}
