//
//  ViewController.swift
//  Xylophone
//
//  Created by Nada Dawoud on 2/10/18.
//  Copyright © 2018 Mobile Apps Kitchen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        playXylophoneSound(withKey: sender.tag)
    }
    
    func playXylophoneSound(withKey: Int) {
        
        let soundURL = Bundle.main.url(forResource: "note\(withKey)", withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: soundURL)
            
            guard let player = player else { return }
            player.prepareToPlay()
        
            player.play()
            
        } catch let error as NSError {
            print(error.description)
        }
    }

}

