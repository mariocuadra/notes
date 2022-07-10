//
//  DetailNotes.swift
//  notes WatchKit Extension
//
//  Created by DTI on 02-07-22.
//

import SwiftUI
import AVFoundation

struct DetailNotes: View {
    // Recibe el objeto del listado de notas que viene
    // de la pantalla previa
    
    let note : Note
    let speech : TextSpeech
    //let text : String
    var body: some View {
        
     
        VStack{
            Text(note.title)
                .font(.system(size: 20))
                .foregroundColor(.white)
            // boton reproductor
            
            Button("Play"){
             
                speech.readText(isText: note.title)
                
            }
            
            Spacer()
            Text(note.creationDate)
                .font(.system(size: 12))
                .fontWeight(.bold)
                .foregroundColor(.gray)
        }
    }
}

struct DetailNotes_Previews: PreviewProvider {
    static var previews: some View {
        DetailNotes(note: Note(title: "Hola nota"),  speech: TextSpeech(isText: "Hola mundo"))
        
           
        
    }
}
