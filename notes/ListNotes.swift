//
//  ListNotes.swift
//  notes WatchKit Extension
//
//  Created by DTI on 02-07-22.
//

import SwiftUI

struct ListNotes: View {
 
    @State private var notes = [Note]()
    
    var body: some View {
        
        VStack{
            Text("Notas \(notes.count)")
            List{
                ForEach(0..<notes.count, id: \.self){ i in
                   NavigationLink(
                    destination:DetailNotes(note: notes[i],speech: TextSpeech.init(isText: "")),
                    label:{
                        Text(notes[i].title)
                        .lineLimit(1)
                    })
                }
                .onDelete(perform: delete)
                
            }
        }
        .onAppear(perform: {
            notes = Tools.shared.load()
        })
    }
    
    func delete(offsets:IndexSet){
        withAnimation{
            //Borrar en la pantalla
            notes.remove(atOffsets: offsets)
        }
        
            //Borrar en el arreglo
            Tools.shared.save(array: notes)
        
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
