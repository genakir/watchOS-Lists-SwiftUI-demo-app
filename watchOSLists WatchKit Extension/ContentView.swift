//
//  ContentView.swift
//  watchOSLists WatchKit Extension
//
//  Created by Kiryushatov, Gennadii on 10/1/19.
//  Copyright © 2019 Gennadii Kiryushatov. All rights reserved.
//

import SwiftUI

struct AnimalModel: Identifiable {
    var id = UUID()
    var Name: String
}

struct ContentView: View {
    
    @State var animals: [AnimalModel] = [AnimalModel(Name: "Dog"),
                                        AnimalModel(Name: "Cat"),
                                        AnimalModel(Name: "Dog"),
                                        AnimalModel(Name: "Cat"),
                                        AnimalModel(Name: "Dog"),
                                        AnimalModel(Name: "Cat")]
    
    var body: some View {
        List {
            ForEach(animals) { animal in
                Text("\(animal.Name)")
            }.onMove { self.animals.move(fromOffsets: $0, toOffset: $1) }
                .onDelete { self.animals.remove(atOffsets: $0) }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
