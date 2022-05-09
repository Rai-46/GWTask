//
//  RedBlueView.swift
//  GWProject
//
//  Created by 白井裕人 on 2022/05/09.
//

import SwiftUI

struct RedBlueView: View {
    
    @ObservedObject var viewModel = RGBViewModel.rgbViewModel
    
    var body: some View {
        Color(red: Double(viewModel.REDCounter) / 255, green: 0, blue: Double(viewModel.BLUECounter) / 255)
    }
}

struct RedBlueView_Previews: PreviewProvider {
    static var previews: some View {
        RedBlueView()
    }
}
