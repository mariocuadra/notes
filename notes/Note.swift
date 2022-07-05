//
//  Note.swift
//  notes WatchKit Extension
//
//  Created by DTI on 30-06-22.
//

import SwiftUI

struct Note : Codable, Identifiable{
    var id: UUID
    var title: String
    var creationDate : String
    
    init(title:String){
        
        self.id = UUID()
        self.title=title
        
        let date =  Date()
        let dateFormatter  = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        // dateFormatter señala cuales son las
        self.creationDate = dateFormatter.string(from: date)
        
    }
    
    
}
