import UIKit
import AVFoundation

class AddBeatView: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    var AVList = [AVAudioPlayer]()
    var recording: Recording?
    var recStartTime: NSDate?
    var tempBeat: Beat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initButtons()
        recStartTime = NSDate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func beatButtonPressed(sender: AnyObject){
        guard let button = sender as? UIButton else {
            return
        }
        
        var currentRecTime: Double?
        currentRecTime = 0.0
        tempBeat = Beat()
        
        let now = NSDate()
        if let recStartTime = self.recStartTime {
            currentRecTime = now.timeIntervalSince(recStartTime as Date)
        }
        
        //TODO: Duplicate this effort across each of the buttons
        switch button {
        case button1:
            print("Beat: beep.wav added at time: " + String(currentRecTime!))
            tempBeat!.timeStamp = currentRecTime!
            tempBeat!.fileName = "beep.wav"
            recording?.addBeat(p_Beat: tempBeat!)
            AVList[0].play()
        case button2:
            AVList[1].play()
        case button3:
            AVList[2].play()
        case button4:
            AVList[3].play()
        case button5:
            AVList[4].play()
        case button6:
            AVList[5].play()
        case button7:
            AVList[6].play()
        case button8:
            AVList[7].play()
        case button9:
            AVList[8].play()
        case button10:
            AVList[9].play()
        case button11:
            AVList[10].play()
        case button12:
            AVList[11].play()
        case button13:
            AVList[12].play()
        case button14:
            AVList[13].play()
        case button15:
            AVList[14].play()
        case button16:
            AVList[15].play()
        default:
            print("Something went wrong")
            return
        }
    }
    
    //TODO: Fix an issue where pressing the buttons really fast cuts off the sound,
    //      take a look at the xamarin project because I think the same thing
    //      was happening. - Could work better on phone??.
    //TODO: Create custom table view on first page of each seperate recording.
    func initButtons(){
        var AVTemp: AVAudioPlayer?
        //TODO: Turn this fileList into pulling from an xml doc
        let fileList: [String] = ["beep", "beep_short_on", "chime_bell_ding", "click_04", "pop_drip", "snare1", "snare2", "snare3", "snare4", "snare5", "snare6", "snare7", "snare8", "Snare9", "Drum", "Drum1"]
        
        for file in fileList {
            let sound = NSDataAsset(name: file)
            do
            {
                AVTemp = try AVAudioPlayer(data: sound!.data)
                AVTemp?.prepareToPlay()
                AVList.append(AVTemp!)
                print(AVList.count)
            }
            catch let error as NSError
            {
                print(error.debugDescription)
            }
        }
    }
    
    @IBAction func playButton(_ sender: Any) {
        recording?.playRecording()
        
        //TEMP
        var tempCount: Int
        tempCount = 0
        for beat in recording!.BeatList{
            print("Beat #" + String(tempCount))
            print("Name: " + beat.fileName)
            print("Time: " + String(beat.timeStamp))
            print("------------------")
            tempCount = tempCount + 1
        }
    }
    
    //TODO: Make recording stop on second press not wipe our recording.
    //      on second press add recording to track??
    @IBAction func recordButton(_ sender: Any) {
        recording = Recording()
    }
    
}

