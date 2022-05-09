//
//  RGBView.swift
//  GWProject
//
//  Created by 白井裕人 on 2022/04/29.
//

import SwiftUI

struct RGBView: View {
    
    
    @ObservedObject var viewModel = RGBViewModel.rgbViewModel
    
    @State private var valueR: Double = 0
    @State private var valueG: Double = 0
    @State private var valueB: Double = 0
    
    
    
    var body: some View{
        
        NavigationView {
            VStack{
                
                ZStack{
                    
                    Image("backgroundImage")
                        .resizable()
                        .edgesIgnoringSafeArea(.top)
                    
                    GeometryReader{ geometry in
                        VStack(spacing: 0){
                            HStack(spacing: 0){
                                
                                
                                RedView()
                                //大きさを画面３等分に設定（正方形）
                                    .frame(width: (geometry.size.width * 2) / 9, height: geometry.size.width / 3)
                                
                                RedGreenView()
                                    .frame(width: geometry.size.width / 9 , height: geometry.size.width / 3)
                                    
                                
                                
                                GreenView()
                                    .frame(width: (geometry.size.width * 2) / 9, height: geometry.size.width / 3)
                                
                                
                            }.offset(x: (geometry.size.width * 2) / 9 , y: 0)
                            
                            
                            
                            ZStack{
                                BlueView()
                                    .frame(width: geometry.size.width / 3, height: (geometry.size.width) / 3)
                                    .offset(x: geometry.size.width / 3 - (geometry.size.width / 9) ,y: -(geometry.size.width / 9) )
                                
                                HStack(spacing: 0){
                                    RedBlueView()
                                        .frame(width: geometry.size.width / 9, height: geometry.size.width / 9)
                                        .border(Color.black, width: 1)
                                    
                                    AllColorView()
                                        .frame(width: geometry.size.width / 9, height: geometry.size.width / 9)
                                        .border(Color.black, width: 1)
                                    
                                    GreenBlueView()
                                        .frame(width: geometry.size.width / 9, height: geometry.size.width / 9)
                                        .border(Color.black, width: 1)
                                        
                                }.offset(x: geometry.size.width * 2 / 9, y: -(geometry.size.width * 2 / 9))
                                
                            }
                            
                            
                        }.offset(y: geometry.size.height / 4)
                        
                    }
                }
                
                
                
                
                VStack(spacing: 0){
                    VStack(spacing: 0){
                        Text("R : \(Int(valueR))")
                        //Slider（0 ~ 255）
                        Slider(value: $valueR, in: 0...255, onEditingChanged: { bool in
                            //操作中かどうかをとるクロージャー。
                            //boolにtrue:操作中 false:操作していない　が入っている。
                            viewModel.redSet(colorNum: Int(valueR))
                        }, minimumValueLabel: Text("0"), maximumValueLabel: Text("255"), label: { Text("label")})
                    }
                    VStack(spacing: 0){
                        Text("G : \(Int(valueG))")
                        Slider(value: $valueG, in: 0...255, onEditingChanged: { bool in
                            if !bool {
                                viewModel.greenSet(colorNum: Int(valueG))
                            }
                        }, minimumValueLabel: Text("0"), maximumValueLabel: Text("255"), label: { Text("label")})
                    }
                    VStack(spacing: 0){
                        Text("B : \(Int(valueB))")
                        Slider(value: $valueB, in: 0...255, onEditingChanged: { bool in
                            if !bool {
                                viewModel.blueSet(colorNum: Int(valueB))
                            }
                        }, minimumValueLabel: Text("0"), maximumValueLabel: Text("255"), label: { Text("label")})
                    }
                    
                    
                }.padding()
            }
            .navigationBarTitle("RGBカラー調整", displayMode: .inline)
            
        }
    }
    
}

struct RGBView_Previews: PreviewProvider {
    static var previews: some View {
        RGBView()
            .previewInterfaceOrientation(.portrait)
        
    }
}
