//
//  LoadingView.swift
//  Weather
//
//  Created by Chaithawat Pinsuwan on 20/8/24.
//

import SwiftUI

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
