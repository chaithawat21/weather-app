//
//  BackgroundWeatherView.swift
//  Weather
//
//  Created by Chaithawat Pinsuwan on 20/8/24.
//

import SwiftUI

struct BackgroundWeatherView: View {
    var body: some View {
        Image("DaytimeImage")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(minWidth: 0, maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackgroundWeatherView()
}
