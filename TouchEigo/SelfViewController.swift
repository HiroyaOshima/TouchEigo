//
//  SelfViewController.swift
//  TouchEigo
//
//  Created by 大嶋 広也 on 2017/03/08.
//  Copyright © 2017年 大嶋 広也. All rights reserved.
//

import UIKit
import AVFoundation

class SelfViewController:UIViewController{
    
    //音源ファイルを指定
    let momPath = Bundle.main.bundleURL.appendingPathComponent("mom.mp3")
    let catPath = Bundle.main.bundleURL.appendingPathComponent("cat.mp3")
    
    var  momPleyer = AVAudioPlayer()
    var  catPleyer = AVAudioPlayer()
    
    
    
    @IBAction func mom(_ sender: Any) {
        
        do {
            //音源ファイル名を指定
            momPleyer = try AVAudioPlayer(contentsOf:momPath, fileTypeHint:nil)
            momPleyer.play()
            
        }catch{
            print("エラーが発生")
        }
    }

    
    @IBAction func cat(_ sender: Any) {
        
        do {
            //音源ファイル名を指定
            catPleyer = try AVAudioPlayer(contentsOf:catPath, fileTypeHint:nil)
            catPleyer.play()
            
        }catch{
            print("エラーが発生")
        }

        
    }

}
