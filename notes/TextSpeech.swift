//
//  TextSpeech.swift
//  notes WatchKit Extension
//
//  Created by DTI on 07-07-22.
//

import Foundation
import AVFoundation

class TextSpeech{
    
    var isText : String
    
    init(isText: String) {
            
        self.isText = isText
    }
    
    func readText(isText : String){
        
      let readtext = AVSpeechUtterance(string: "\(isText)")
          readtext.voice = AVSpeechSynthesisVoice(language: "fr-FR")
          readtext.rate = 0.3
        
          let synthensizer = AVSpeechSynthesizer()
          synthensizer.speak(readtext)
        
        
    }
    
    
    
    
}
