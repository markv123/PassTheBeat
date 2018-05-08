import Foundation

class Recording {
    var BeatList: [Beat]
    //TODO: add variable for recording timer here
    //TODO: Add a readme.md to github
    
    init(){
        BeatList = [Beat]()
    }
    
    func addBeat(p_Beat: Beat){
        BeatList.append(p_Beat)
    }
    
    func startRecording(){
        var p_TestString = "This string is nonsense, delete plz."
    }
    
    func stopRecording(){
        
    }
    
    func playRecording(){
        
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

