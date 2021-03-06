import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        playSound(sender.tag)
    }
    
    
    
    func playSound(_ numberOfSound: Int ){
        let soundURL = Bundle.main.url(forResource: "note\(numberOfSound)", withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }
}

