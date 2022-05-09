//
//  GreenBlueView.swift
//  GWProject
//
//  Created by 白井裕人 on 2022/05/09.
//

import SwiftUI

struct GreenBlueView: View {
    
    @ObservedObject var viewModel = RGBViewModel.rgbViewModel
    
    var body: some View {
        Color(red: 0, green: Double(viewModel.GREENCounter) / 255, blue: Double(viewModel.BLUECounter) / 255)
    }
}

struct GreenBlueView_Previews: PreviewProvider {
    static var previews: some View {
        GreenBlueView()
    }
}
