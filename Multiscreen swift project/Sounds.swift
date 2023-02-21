//
//  ContentView.swift
//  Multiscreen swift project
//
//  Created by Daniel Wai on 2/14/23.
//

import SwiftUI
import UIKit
import AVFoundation

func loadUrlAudio(_ urlString:String) -> AVAudioPlayer? {
    let url = URL(string: urlString)
    do {
        let data = try Data(contentsOf: url!)
        return try AVAudioPlayer(data: data)
    } catch {
        print("loadUrlSound error", error)
    }
    return nil
}

let urlSounds = ["https://weatherfortheblind.org/wp-content/themes/weather/tracks/SLEEP.mp3"]



struct Sounds: View {
    var body: some View {
        VStack{
            Text("Sound")
            HStack{
                Button ("Play") {
                    
                }
            }
        }
    }
}

struct ContentView_Previews2: PreviewProvider {
    static var previews: some View {
        Sounds()
    }
}
