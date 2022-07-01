//
//  ContentView.swift
//  notes WatchKit Extension
//
//  Created by DTI on 28-06-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var note = Note(title: "Una nota", creationDate: "14/06/2022")
        
        Text("\(note.title) -       \(note.creationDate)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
