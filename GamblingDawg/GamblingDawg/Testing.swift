//
//  Testing.swift
//  GamblingDawg
//
//  Created by Caleb Wheeler on 1/14/20.
//  Copyright © 2020 Caleb Wheeler. All rights reserved.
//

import SwiftUI

struct Testing: View {
    @State private var Option = ["1-10","1-100","L or D","Custom"]
    @State private var Random = Int.random(in: 0...4)
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Za WArudo")
                }
                .padding(200)
                Section {
                    ForEach(0 ..< Option.count) { number in
                        Button(action: {
                            //self.Buttons
                        })
                    }
                }
                
            }
        .navigationBarTitle("Break Time")
        }
    }
}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Testing()
    }
}
