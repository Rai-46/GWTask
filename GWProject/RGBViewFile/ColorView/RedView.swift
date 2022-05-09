//
//  RedView.swift
//  GWProject
//
//  Created by 白井裕人 on 2022/05/07.
//

import SwiftUI

struct RedView: View {
    
    @ObservedObject var viewModel = RGBViewModel.rgbViewModel
    
    var body: some View {
        Color(red: Double(viewModel.REDCounter) / 255, green: 0, blue: 0)

    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
