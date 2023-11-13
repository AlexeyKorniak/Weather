//
//  RangedProgressView.swift
//  Weather
//
//  Created by shreki on 2023/10/30.
//

import SwiftUI


struct RangedProgressView: ProgressViewStyle {
    let range: ClosedRange<Double>
    let foregroundColor: AnyShapeStyle
    let backgroundColor: Color
    func makeBody(configuration: Configuration) -> some View {
        return GeometryReader {
            proxy in
            
            ZStack(alignment: .leading) {
                Capsule()
                    .fill(backgroundColor)
               
                Capsule()
                    .fill(foregroundColor)
                    .frame(width: proxy.size.width * fillwidthScale)
                    .offset(x: proxy.size.width * range.lowerBound)
                
                Circle()
                    .foregroundColor(backgroundColor)
                    .frame(width: proxy.size.height + 2, height: proxy.size.height + 2)
                    .position(x: proxy.size.width * (configuration.fractionCompleted ?? 0.0), y: proxy.size.height/2.0)
                
                Circle()
                    .foregroundColor(.white)
                    .position(x: proxy.size.width * (configuration.fractionCompleted ?? 0.0), y: proxy.size.height/2.0)
            }
            //.clipped()
        }
    }
    
    var fillwidthScale: Double {
        let normalizedRange = range.upperBound - range.lowerBound
        return Double(normalizedRange)
    }
    }

#Preview {
    ScrollView {
        VStack {
            
            ForEach(0...10, id:\.self) { value in
                let range = 0.0...(Double(value)/10.0)
                let gradient = LinearGradient(colors: [.yellow, .orange], startPoint: .leading, endPoint: .trailing)
                ProgressView(value: 0.5)
                    .frame(width: 10)
                    .progressViewStyle(RangedProgressView(range: range, foregroundColor: AnyShapeStyle(gradient),                              backgroundColor: .purple))
                    .padding()
            }
            ForEach(0...10, id:\.self) { value in
                let range = (Double(value)/10.0)...1.0
                ProgressView(value: 0.5)
                    .frame(width: 10)
                    .progressViewStyle(RangedProgressView(range: range, foregroundColor: AnyShapeStyle(.blue),
                                                                        backgroundColor: .green))
                    .padding()
            }
           
                ProgressView(value: 0.5)
                    .frame(width: 10)
                    .progressViewStyle(RangedProgressView(range: 0.1...0.9, foregroundColor:                AnyShapeStyle(.blue),
                                                                            backgroundColor: .green))
                    .padding()
            ProgressView(value: 0.5)
                .frame(width: 10)
                .progressViewStyle(RangedProgressView(range: 0.3...0.7, foregroundColor: AnyShapeStyle(.blue),
                                                                        backgroundColor: .green))
                .padding()
            ProgressView(value: 0.5)
                .frame(width: 10)
                .progressViewStyle(RangedProgressView(range: 0.4...0.9, foregroundColor: AnyShapeStyle(.blue),
                                                                        backgroundColor: .green))
                .padding()
        }
    }
}
                                       
