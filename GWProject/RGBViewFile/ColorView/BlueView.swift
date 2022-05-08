//
//  BlueView.swift
//  GWProject
//
//  Created by 白井裕人 on 2022/05/07.
//

import SwiftUI

struct BlueView: View {
    
    
    @ObservedObject var viewModel = RGBViewModel.rgbViewModel
    
    var body: some View {
        Color(red: 0, green: 0, blue: Double(viewModel.BLUECounter) / 255)
        
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView()
    }
}
