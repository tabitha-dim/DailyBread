//
//  sermonsAppApp.swift
//  sermonsApp
//
//  Created by Tabitha Dimyan on 8/11/22.
//

import SwiftUI
import MusicKit

@main
struct sermonsAppApp: App {
    init(){
        Theme.navigationBarColors(background: UIColor(Color("Background")), titleColor: UIColor(Color("Burgendy")))
    }
    var body: some Scene {
        
        WindowGroup {
            SplashScreenView()
        }
    }
}
