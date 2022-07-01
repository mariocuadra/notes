//
//  AddNote.swift
//  notes WatchKit Extension
//
//  Created by DTI on 01-07-22.
//

import SwiftUI

struct AddNote: View {
    
    @State private var notes = [Note]()
    @State private var textNote = ""
    
    
    var body: some View {
    
        TextField("Nota ", text: $textNote)
        Button("Agregar nota"){
            
            guard textNote.isEmpty==false            else
            {
                return
            }
            
            let note = Note(title: textNote, creationDate: "01/07/2022")
            notes.append(note)
            textNote = ""
        }
        
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
