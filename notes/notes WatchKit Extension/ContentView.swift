//
//  ContentView.swift
//  notes WatchKit Extension
//
//  Created by DTI on 28-06-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var note = Note(title: "Una nota")
        
        Text("\(note.title)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
