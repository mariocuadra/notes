//
//  AddNote.swift
//  notes WatchKit Extension
//
//  Created by DTI on 01-07-22.
//

import SwiftUI

struct AddNote: View {
    // arreglo de notas
    @State private var notes = [Note]()
    @State private var textNote = ""
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            TextField("Nota ", text: $textNote)
            Button("Agregar nota"){
                // si el ingreso es vacio que no continue
                guard textNote.isEmpty==false            else
                {
                    return
                }
                // guarda las notas en un arreglo
                let note = Note(title: textNote)
                // agrega la nota
                notes.append(note)
                //guarda el arreglo en singleton 
                Tools.shared.save(array: notes)
                // se limpia la propiedad de textnote.
                textNote = ""
                //la vista desaparece cuando le da agregar al boton
                presentation.wrappedValue.dismiss()
            }
        }
        .onAppear(perform: {
            notes = Tools.shared.load()
        })
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
