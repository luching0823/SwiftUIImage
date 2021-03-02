//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by 廖昱晴 on 2021/3/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Image(systemName: "cloud.heavyrain") //系統圖片
//            .font(.system(size: 100)) //變更系統圖片大小
//            .foregroundColor(.blue) //變更系統圖片顏色
//            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10) //增加系統圖片陰影
        
        Image("paris") //客製圖片
            .resizable() //調整圖片大小比例，並限制在safe area內
//            .edgesIgnoringSafeArea(.all) //忽略safe area限制
//            .scaledToFit() //保持原本長寬比
//            .aspectRatio(contentMode: .fit) //保持原本長寬比
            .aspectRatio(contentMode: .fill) //保持長寬比，但盡可能延伸
//            .clipShape(Circle()) //裁剪成圓形圖片
            .opacity(0.5) //調整透明度
            .overlay( //重疊另一物件
//            Image(systemName: "heart.fill")
//                .font(.system(size: 50))
//                .foregroundColor(.black)
//                .opacity(0.3)
                Rectangle() //重疊一個矩形
                    .foregroundColor(.black)
                    .opacity(0.3)
                    .overlay(
                    Text("Paris") //重疊一個文字
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 200) //限制大小
                    )
            )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
