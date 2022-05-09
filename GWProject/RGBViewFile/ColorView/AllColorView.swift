//
//  AllColorView.swift
//  GWProject
//
//  Created by 白井裕人 on 2022/05/07.
//

import SwiftUI

struct AllColorView: View {
    
    
    @ObservedObject var viewModel = RGBViewModel.rgbViewModel
    
    var body: some View {
        Color(red: Double(viewModel.REDCounter) / 255, green: Double(viewModel.GREENCounter) / 255, blue: Double(viewModel.BLUECounter) / 255)
    }
}

struct AllColorView_Previews: PreviewProvider {
    static var previews: some View {
        AllColorView()
    }
}
