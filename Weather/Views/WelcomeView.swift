//
//  WelcomeView.swift
//  Weather
//
//  Created by Chaithawat Pinsuwan on 20/8/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
       
        
        VStack {
            VStack(spacing: 20) {
                Text("Welcome to the Weather App").foregroundColor(Color.black).bold().font(.largeTitle).padding(.horizontal, 50.0)
                Text("Please share your current location to get the weather in your area")
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 50.0)
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
    
}

#Preview {
    WelcomeView()
}
