//
//  GreenView.swift
//  GWProject
//
//  Created by 白井裕人 on 2022/05/07.
//

import SwiftUI

struct GreenView: View {
    
    @ObservedObject var viewModel = RGBViewModel.rgbViewModel
    
    var body: some View {
        Color(red: 0, green: Double(viewModel.GREENCounter) / 255, blue: 0)
        
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView()
    }
}
