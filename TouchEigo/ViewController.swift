//
//  ViewController.swift
//  TouchEigo
//
//  Created by 大嶋 広也 on 2017/03/05.
//  Copyright © 2017年 大嶋 広也. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let soundURL = Bundle.main.url(forResource: "contedefees_0120",withExtension:"mp3")
        do{
            player = try AVAudioPlayer(contentsOf:soundURL!)
            player?.numberOfLoops = -1 //ループを再生
            player?.prepareToPlay() //即時再生
            player?.play() //BGMを鳴らす
        }catch {
            print("error")
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
