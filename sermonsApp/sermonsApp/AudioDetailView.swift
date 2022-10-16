//
//  AudioDetailView.swift
//  sermonsApp
//
//  Created by Tabitha Dimyan on 8/11/22.
//

import SwiftUI
import AVKit

struct AudioDetailView: View {
    let size: CGFloat = 200
    @State var audioPlayer: AVAudioPlayer!
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 20){
            
            Image("gidoPic")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color("Burgendy"))
                .frame(width: size, height: size)
            Text("Sermon 1")
                .font(.title)
                .fontWeight(.thin)
                .foregroundColor(Color("Burgendy"))
            Text("01/01/20")
                .font(.body)
                .fontWeight(.thin)
                .foregroundColor(Color("Burgendy"))
            
            HStack{
                
                Button(action: {
                    self.audioPlayer.play()
                })//: play Button
                {
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color("Burgendy"))
                }
                Button(action: {
                    self.audioPlayer.stop()
                })//: pause Button
                {
                    Image(systemName: "pause.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color("Burgendy"))
                }
            }//: HStack
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
        //: VStack
        .onAppear(){
            let sound = Bundle.main.path(forResource: "sermon1", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}

struct AudioDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AudioDetailView()
            .previewInterfaceOrientation(.portrait)
    }
}
