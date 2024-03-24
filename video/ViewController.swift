//
//  ViewController.swift
//  video
//
//  Created by apple on 7/20/23.
//

import UIKit
import AVFoundation
import AVKit



class ViewController: UIViewController {

    @IBOutlet weak var fun: UIButton!
    
    @IBOutlet weak var video: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }

      //audio
    @IBAction func fun(_ sender: Any) {
        
    let url = Bundle.main.url(forResource: "1", withExtension: "mp3")
        playcontent(url: url!)
           
    }

   
    //video
    @IBAction func videofun(_ sender: Any) {
    
    
      let url =  URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!
        playcontent(url: url)
    }
        
        
        
    func playcontent(url:URL){
        let player = AVPlayer(url:url)
        let pc = AVPlayerViewController()
        pc.player = player
        self.present(pc, animated: true){
        pc.player!.play()
    }
     
}

}
