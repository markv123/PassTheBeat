import Foundation
import AVFoundation

class Recording {
    var BeatList: [Beat]
    var AVPlayer: AVAudioPlayer?
    //TODO: add variable for recording timer here
    //TODO: Add a readme.md to github
    
    init(){
        BeatList = [Beat]()
        AVPlayer = AVAudioPlayer()
    }
    
    func addBeat(p_Beat: Beat){
        BeatList.append(p_Beat)
    }
    
    func startRecording(){
        
    }
    
    func stopRecording(){
        
    }
    
    func playRecording(){
        //TODO: Figure out how to access the sounds
        //      from a different folder
        //TODO: Add a section of the beat called
        //      timestamp or something and pause
        //      for that long before playing the
        //      sound in the recording so it is
        //      an actual song.
        //TODO: Make hitting the record button actually
        //      be able to add different beats to the beat
        //      list and the play button play them all.
        for Beat in BeatList {
            print("test")
            DispatchQueue.main.asyncAfter(deadline: .now() + (Beat.timeStamp), execute: {
                print(Beat.fileName)
                let path = Bundle.main.path(forResource: Beat.fileName, ofType:nil)
                if path != nil {
                    let test = NSURL.fileURL(withPath: path!)
                    
                    do {
                        self.AVPlayer = try AVAudioPlayer(contentsOf: test)
                        self.AVPlayer?.prepareToPlay()
                    }
                    catch let error as NSError {
                        print (error.debugDescription)
                    }
                    
                } else {
                    print("audio file is not found")
                }
                self.AVPlayer?.play()
            })
        }
    }
    
    func stopPlaying(){
        
    }
    
    func editRecording(){
        
    }
    
    //This should be async and idk if it should be in
    //this class yet.
    func playBeat(){
        
    }
}

//namespace Application.Classes
//    {
//        public class Recording
//        {
//            public List<Beat> BeatCollection { get; set; }
//            public Stopwatch RecordingStopwatch { get; set; }
//
//            private double CurrentTime { get; set; }
//            public string RecordingID { get; set; }
//
//            public Recording(string p_RecordingID)
//        {
//            RecordingStopwatch = new Stopwatch();
//            BeatCollection = new List<Beat>();
//            RecordingID = p_RecordingID;
//            }
//
//            public void StartRecording()
//        {
//            RecordingStopwatch.Start();
//            }
//
//            public void StopRecording()
//        {
//            RecordingStopwatch.Reset();
//            }
//
//            public void AddBeat(Beat beat)
//        {
//            BeatCollection.Add(beat);
//            }
//
//            public void PlayRecording()
//        {
//            Stopwatch playTime = new Stopwatch();
//            playTime.Start();
//            foreach (Beat beat in BeatCollection)
//            {
//            PlayBeat(beat, playTime.ElapsedMilliseconds);
//            }
//            }
//
//            public void StopPlaying()
//        {
//            Console.WriteLine("STOP PLAYING");
//            }
//
//            public void EditRecord()
//        {
//            Console.WriteLine("EDIT RECORD");
//            }
//
//            private async void PlayBeat(Beat p_Beat, double p_CurrentTime)
//        {
//            double delayTime = (p_Beat.Timestamp - p_CurrentTime);
//            if (delayTime > 0)
//            {
//            await PutTaskDelay((int)delayTime);
//            }
//            AudioManager audio = new AudioManager();
//            audio.PlaySound(p_Beat.URL);
//            }
//
//            async Task PutTaskDelay(int p_DelayTime)
//            {
//            await Task.Delay(p_DelayTime);
//            }
//        }
//}

