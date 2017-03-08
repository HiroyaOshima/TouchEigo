//
//  VegetableViewController.swift
//  TouchEigo
//
//  Created by 大嶋 広也 on 2017/03/05.
//  Copyright © 2017年 大嶋 広也. All rights reserved.
//

import UIKit
import AVFoundation

class VegetableViewController:UIViewController{
    
    //やさいの音源ファイルを指定
    let greenpepperPath = Bundle.main.bundleURL.appendingPathComponent("green_pepper.mp3")
    let tomatoPath = Bundle.main.bundleURL.appendingPathComponent("tomato.mp3")
    let carrotPath = Bundle.main.bundleURL.appendingPathComponent("carrot.mp3")
    let eggplantPath = Bundle.main.bundleURL.appendingPathComponent("eggplant.mp3")
    
    var greenpepperPleyer = AVAudioPlayer()
    var tomatoPleyer = AVAudioPlayer()
    var carrotPleyer = AVAudioPlayer()
    var eggplantPleyer = AVAudioPlayer()
    
    @IBAction func greenpepperTap(_ sender: UITapGestureRecognizer) {
    
        let greenpepperImage = UIImageView(image:UIImage(named:"character_piman"))
        
        let scaleTrancsform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        
        let rotationTransform = CGAffineTransform(rotationAngle: CGFloat(-M_PI_2))
        
        let transform = scaleTrancsform.concatenating(rotationTransform)
        
        greenpepperImage.transform = transform
        
        greenpepperImage.center = sender.location(in: self.view)
        self.view.addSubview(greenpepperImage)
        
    }
    
    
    @IBAction func greenpepper(_ sender: Any) {
        
      do {
        //ピーマンの発音の音源ファイル名を指定
        greenpepperPleyer = try AVAudioPlayer(contentsOf:greenpepperPath, fileTypeHint:nil)
        greenpepperPleyer.play()
        
        }catch{
            print("エラーが発生")
        }
        
    }
    
    
    @IBAction func tomato(_ sender: Any) {
        do{
        tomatoPleyer = try AVAudioPlayer(contentsOf:tomatoPath, fileTypeHint:nil)
        tomatoPleyer.play()
        
        }catch{
            print("エラーが発生")
        }
    }
    
    
    @IBAction func carrot(_ sender: Any) {
        do{
        carrotPleyer = try AVAudioPlayer(contentsOf:carrotPath, fileTypeHint:nil)
        carrotPleyer.play()
        }catch{
            print("エラーが発生")
        }
    }
    
    
    @IBAction func eggplant(_ sender: Any) {
        do{
            eggplantPleyer = try AVAudioPlayer(contentsOf:eggplantPath, fileTypeHint:nil)
            eggplantPleyer.play()
        }catch{
            print("エラーが発生")
        }
    }
    
}
