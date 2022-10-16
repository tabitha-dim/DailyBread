//
//  AudioFileView.swift
//  sermonsApp
//
//  Created by Tabitha Dimyan on 8/11/22.
//

import SwiftUI
import MusicKit


struct AudioFileView: View {
    let year: Int
    
    @Environment(\.presentationMode) var presentation

    var body: some View {
        ZStack{
            
            List{
                ForEach(0..<10){audio in
                    NavigationLink("Audio \(audio)") {
                        AudioDetailView()
                    }//: NavigationLink
                }//: ForEach folder
            }//: List
            .foregroundColor(Color("Burgendy"))
            
            
        }//ZVStack
        .navigationTitle(String(year))
        .navigationBarBackButtonHidden(true)
        .toolbar(content: {
            ToolbarItem (placement: .navigationBarLeading)  {
                 Image(systemName: "arrow.left")
                 .foregroundColor(Color("Burgendy"))
                 .onTapGesture {
                     // code to dismiss the view
                     self.presentation.wrappedValue.dismiss()
                 }
              }
           })
        
    }
    
    
    struct AudioFileView_Previews: PreviewProvider {
        static var previews: some View {
            AudioFileView(year: 2010)
        }
    }
}
