//
//  ViewModel.swift
//  GWProject
//
//  Created by 白井裕人 on 2022/05/07.
//

import Foundation

class RGBViewModel: ObservableObject {
    @Published var REDCounter: Int = 0
    @Published var GREENCounter: Int = 0
    @Published var BLUECounter: Int = 0
    
    //ViewModelをsingletonで実装（EnvironmentoObjectを使わないで実装）
    static let rgbViewModel = RGBViewModel()
    
    private init(){}
    
    func redSet(colorNum: Int){
        self.REDCounter = colorNum
    }
    
    func greenSet(colorNum: Int){
        self.GREENCounter = colorNum
    }
    
    func blueSet(colorNum: Int){
        self.BLUECounter = colorNum
    }
}
