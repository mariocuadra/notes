//
//  ContentView.swift
//  notes WatchKit Extension
//
//  Created by DTI on 28-06-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
           NavigationLink("Agrega nota",destination: AddNote())
           NavigationLink("Listar nota", destination: ListNotes())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
