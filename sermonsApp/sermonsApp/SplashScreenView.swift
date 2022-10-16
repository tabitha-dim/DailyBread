//
//  SplashScreenView.swift
//  sermonsApp
//
//  Created by Tabitha Dimyan on 8/23/22.
//

import SwiftUI
import MusicKit

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive{
            MainView()
        }
        else{
            VStack{
                VStack{
                    Image(systemName: "book.circle.fill")
                        .font(.system(size: 80))
                        .foregroundColor(Color("Burgendy"))
                    Text("Daily Bread")
                        .font(.system(size: 26,  weight: .medium))
                        .foregroundColor(Color("Burgendy").opacity(0.8))
                    
                }//: Inner VStack
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.0)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }//: withAnimation
                }//: onAppear
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        withAnimation{
                            self.isActive = true
                        }//: withAnimation
                    }
                }//: onAppear
            }//: Outter VStack
        }//: else
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
