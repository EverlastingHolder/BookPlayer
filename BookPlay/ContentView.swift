import AVFoundation
import SwiftUI

struct ContentView: View {
    @State
    private var isPlay: Bool = false
    
    private let player: AudioPlayer = AudioPlayer()
    
    var body: some View {
        List {
            HStack {
                VStack {
                    Image(systemName: "book")
                    Text("title")
                }
                
                Spacer()
                
                Button(action: {
                    if player.audioPlayer.isPlaying {
                        isPlay = false
                        player.stop()
                    } else {
                        isPlay = true
                        player.play()
                    }
                }) {
                    Text(self.isPlay ? "Stop" : "Play")
                }
            }
        }
        .onAppear {
            player.selectSound("nlo-ne-grusti.mp3")
        }
    }
}
