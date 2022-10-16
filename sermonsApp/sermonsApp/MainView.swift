//
//  ContentView.swift
//  sermonsApp
//
//  Created by Tabitha Dimyan on 8/11/22.
//

import SwiftUI
import MusicKit
import WrappingHStack

struct MainView: View {
    //@Environment(\.presentationMode) var presentation
    var body: some View {
        
        NavigationView{
            HStack(alignment: .top){
                WrappingHStack(0..<5){year in
                        NavigationLink( String(2010 + year)) {
                            AudioFileView(year: (2010 + year))
                            
                        }//: NavigationLink
                        .buttonStyle(YearButton())
                        .padding(20)
                    }//: Wrapping Hstack folder
                .padding(30)//: WrappingHStack
                .foregroundColor(Color("Burgendy"))
                
                
            }//ZStack
            .navigationTitle("Sermons by Year")
            .navigationBarTitleDisplayMode(.inline)
        }//: Navigation
    }
}
 
struct YearButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding(25)
                .background(Color("Burgendy"))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            
              
        }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        MainView()
        
    }
}
