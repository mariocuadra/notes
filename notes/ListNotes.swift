//
//  ListNotes.swift
//  notes WatchKit Extension
//
//  Created by DTI on 02-07-22.
//

import SwiftUI

struct ListNotes: View {
 
    var notes: [Note] = [Note(title: "Uno"),
                         Note(title: "Dos"),
                         Note(title: "Tres")]
    
    var body: some View {
        
        List{
            ForEach(0..<notes.count, id:\.self){
                
                i in Text("\(notes[i].title) - \(notes[i].creationDate)")
                    .lineLimit(1)
            
            }

        }
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
