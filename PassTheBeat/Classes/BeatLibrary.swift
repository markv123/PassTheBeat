import Foundation
import AVFoundation

class BeatLibrary {
    //TODO - Change this, this probably is a terrible way to do things
    var AP1:AVAudioPlayer?
    var AP2:AVAudioPlayer
    var AP3:AVAudioPlayer
    var AP4:AVAudioPlayer
    var AP5:AVAudioPlayer
    var AP6:AVAudioPlayer
    var AP7:AVAudioPlayer
    var AP8:AVAudioPlayer
    var AP9:AVAudioPlayer
    var AP10:AVAudioPlayer
    var AP11:AVAudioPlayer
    var AP12:AVAudioPlayer
    var AP13:AVAudioPlayer
    var AP14:AVAudioPlayer
    var AP15:AVAudioPlayer
    var AP16:AVAudioPlayer

    init(){
        AP1 = AVAudioPlayer(data: PassTheBeat.NSDataAsset(name: "beep")!)
    }
}
