//
//  AudioPlayer.swift
//  BookPlay
//
//  Created by Роман Мошковцев on 25.06.2021.
//

import Foundation
import AVFoundation

class AudioPlayer {
    var audioPlayer: AVAudioPlayer!
    
    func selectSound(_ soundFileName : String) {
        guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
            fatalError("Unable to find \(soundFileName) in bundle")
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func stop() {
        audioPlayer.stop()
    }
    
    func play() {
        audioPlayer.play()
    }
}
