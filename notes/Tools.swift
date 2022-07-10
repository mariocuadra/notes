//
//  Tools.swift
//  notes WatchKit Extension
//
//  Created by DTI on 03-07-22.
//

import Foundation

class Tools{
    
    let keyNote : String = "NotesApp"
    
    static let shared = Tools()
    
    private init(){}
    
    func save(array :[Note]){
        
        let data = array.map{
                    // try? si existe un error al guardar
                    try? JSONEncoder().encode($0)
            }
            UserDefaults.standard.setValue(data, forKey:keyNote)
        }
    
    func load() -> [Note]
    {
        guard let savedData = UserDefaults.standard.array(forKey: keyNote) as? [Data] else{
            return []
    }
        
                // decodifica y realiza el ingreso
        return savedData.map{try! JSONDecoder().decode(Note.self, from: $0)}
    }
    
    }

