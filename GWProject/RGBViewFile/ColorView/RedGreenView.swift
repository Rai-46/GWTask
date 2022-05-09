//
//  RedGreenView.swift
//  GWProject
//
//  Created by 白井裕人 on 2022/05/09.
//

import SwiftUI

struct RedGreenView: View {
    
    @ObservedObject var viewModel = RGBViewModel.rgbViewModel
    
    var body: some View {
        Color(red: Double(viewModel.REDCounter) / 255, green: Double(viewModel.GREENCounter) / 255, blue: 0)
    }
}

struct RedGreenView_Previews: PreviewProvider {
    static var previews: some View {
        RedGreenView()
    }
}
