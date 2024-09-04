//
//  WeatherView.swift
//  Weather
//
//  Created by Chaithawat Pinsuwan on 20/8/24.
//

import SwiftUI

struct WeatherView: View {

    var weather: ResponseBody
    
    var body: some View {
        ZStack(alignment: .leading) {
            BackgroundWeatherView()
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name)
                        .foregroundColor(Color.black)
                        .bold()
                        .font(.title)
                    
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                        .foregroundColor(Color.black)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack {
                    HStack {
                        VStack(spacing: 20) {
                            Image(systemName: "cloud")
                                .foregroundColor(Color.black)
                                .font(.system(size: 40))
                            
                            Text("\(weather.weather[0].main)")
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 150, alignment: .leading)
                        
                        Spacer()
                        
                        Text(weather.main.feelsLike.roundDouble() + "°")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding()
                    }
                    
                    Spacer()
                        .frame(height:  80)
                    
            
                        ProgressView()
                    
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                Spacer()
                VStack(alignment: .leading, spacing: 20) {
                    Text("Weather now")
                        .foregroundColor(Color.black)
                        .bold()
                        .padding(.bottom)
                    
                    HStack {
                        WeatherRow(logo: "thermometer", name: "Min temp", value: (weather.main.tempMin.roundDouble() + ("°")))
                        Spacer()
                        WeatherRow(logo: "thermometer", name: "Max temp", value: (weather.main.tempMax.roundDouble() + "°"))
                    }
                    
                    HStack {
                        WeatherRow(logo: "wind", name: "Wind speed", value: (weather.wind.speed.roundDouble() + " m/s"))
                        Spacer()
                        WeatherRow(logo: "humidity", name: "Humidity", value: "\(weather.main.humidity.roundDouble())%")
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, 20)
                .foregroundColor(Color.black)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color.white)
        .preferredColorScheme(.dark)
    }
}


struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
