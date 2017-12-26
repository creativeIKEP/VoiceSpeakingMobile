

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let synthesizer = AVSpeechSynthesizer()
    var utterance = AVSpeechUtterance(string: "")
    
    @IBOutlet weak var fiel: UITextView!
    @IBOutlet weak var heightOfVoice: UISlider!
    @IBOutlet weak var speedOfVoice: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        utterance.pitchMultiplier = 1.0
//        utterance.rate = 0.5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func speakButton(_ sender: UIButton) {
        fiel.endEditing(true)
        utterance = AVSpeechUtterance(string: fiel.text)
        utterance.pitchMultiplier = 2*heightOfVoice.value
        utterance.rate = speedOfVoice.value
        synthesizer.speak(utterance)
        fiel.text=""
    }
}

