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
    
    var AVList = [AVAudioPlayer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func beatButtonPressed(sender: AnyObject){
        guard let button = sender as? UIButton else {
            return
        }
        
        switch button {
        case button1:
            print("button1 pressed")
            AVList[0].play()
        case button2:
            print("button2 pressed")
            AVList[1].play()
        case button3:
            print("button3 pressed")
            AVList[2].play()
        case button4:
            print("button4 pressed")
            AVList[3].play()
        case button5:
            print("button5 pressed")
            AVList[4].play()
        case button6:
            print("button6 pressed")
            AVList[5].play()
        case button7:
            print("button7 pressed")
            AVList[6].play()
        case button8:
            print("button8 pressed")
            AVList[7].play()
        case button9:
            print("button9 pressed")
            AVList[8].play()
        case button10:
            print("button10 pressed")
            AVList[9].play()
        case button11:
            print("button11 pressed")
            AVList[10].play()
        case button12:
            print("button12 pressed")
            AVList[11].play()
        case button13:
            print("button13 pressed")
            AVList[12].play()
        case button14:
            print("button14 pressed")
            AVList[13].play()
        case button15:
            print("button15 pressed")
            AVList[14].play()
        case button16:
            print("button16 pressed")
            AVList[15].play()
        default:
            print("Something went wrong")
            return
        }
    }
    
    //TODO: Fix an issue where pressing the buttons really fast cuts off the sound,
    //      take a look at the xamarin project because I think the same thing
    //      was happening.
    //TODO: First thing start working on recording the beats now.
    //TODO: After recording figure out custom table view for
    //      different overlaying tracks
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
}
