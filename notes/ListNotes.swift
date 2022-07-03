//
//  ListNotes.swift
//  notes WatchKit Extension
//
//  Created by DTI on 02-07-22.
//

import SwiftUI

struct ListNotes: View {
 
    @State private var notes: [Note] = [Note(title: "Uno"),
                                        Note(title: "Dos"),
                                        Note(title: "Tres")]
                        
    
    var body: some View {
        
        List{
            ForEach(0..<notes.count, id: \.self){ i in
               NavigationLink(
                destination:DetailNotes(note: notes[i]),
                label:{
                    Text(notes[i].title)
                    .lineLimit(1)
                })
            }
            .onDelete(perform: delete)
        }
    }
    
    func delete(offsets:IndexSet){
        withAnimation{
            notes.remove(atOffsets: offsets)
        }
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
