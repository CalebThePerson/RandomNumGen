//
//  ContentView.swift
//  GamblingDawg
//
//  Created by Caleb Wheeler on 1/14/20.
//  Copyright © 2020 Caleb Wheeler. All rights reserved.
//
// Hentai ASCII will be here later dawg

// Later Update :
// When custom button is tapped the steppers then appear rather than the steppers always being there

import SwiftUI

struct ContentView: View {
    //So many @State private vars  i use way to many dawg , i probably don't need this much XD
    //Variables used for calculating and shit like that
    @State private var Option = ["1-10","1-100","L or D","My #"]
    @State private var Random = 0
    @State private var num = 0
    @State private var LowestValue = 7
    @State private var HighestValue = 17
    
    //tbh im not sure what i was going for here
    @State private var Ten = 0
    @State private var Hundred = 0
    //
    @State private var LD = ["Left","Right"]
    
    //Displayed Variables
    @State private var Title = ""
    @State private var Update = ""
    
    var body: some View {
        //Navigation View , it just gives me the header at the top dawg
        
        NavigationView {
            //It creates a giant box basically for everythign thats inside , containing everything kinda proportionally
            
            Form {
                //It's a section , do i need to explain more
                
                Section {
                    //This is the variable that canges everytime you hit a button , it displays the results
                    Text("\(Update)")
                        .frame(minWidth: 133, maxWidth: .infinity, minHeight: 0, maxHeight: 5,alignment: .leading)
                        .font(.largeTitle)
                        .font(.system(size: 70, weight: .bold))
                    //the problem is with words it works until the words get added
                }
                    //the giant area that we created
                .padding(150)
                
                Section {

                    
                    HStack {
                        ForEach(0 ..< Option.count) { number in
                            Button(action: {
                                self.MyButton(number)
                            }) {
                                
                                Text(self.Option[number])
                                    .frame(width:50, height:45)
                                .padding()
                                    .background(Color.purple)
                                .cornerRadius(70)
                                    .foregroundColor(.white)
                                //.padding(6)
                                    .overlay(Circle().stroke(Color.black, lineWidth: 5))
                                
                                
                            }
                        }
                    }
                    //.padding(.top,20)

                .buttonStyle(BorderlessButtonStyle())
                    
                }
                Section(header: Text("Your Custom Range")) {
                    Stepper(value : $LowestValue,in: 1...999, step: 1) {
                        Text("The lowest Number is \(LowestValue)")
                    }
                    
                    Stepper(value: $HighestValue , in: 2...1000, step: 1) {
                        Text("The Highest Number is \(HighestValue)")
                    }
                }
            }
        .navigationBarTitle("Random Generator")
                //When the bar title appears it runs the functin why not
            .onAppear(perform : WhyNot)
        }
    }
    //When any button is pushed it runs this function
    //Which sorts through what button was pushed and runs the aprorpiate function
    func MyButton(_ number: Int) {
        if number == 0 {
            OneToTen()
        } else if number == 1 {
            OneToHundred()
        } else if number == 2 {
            LeftOrRight()
        } else if number == 3 {
            Custom()
        }
    }
    //Preetty simple dawg, just does random number between 1-10
    func OneToTen() {
        Update = ""
        Random = Int.random(in: 1...10)
        let welp = String(Random)
        Update = welp
    }
    
    func OneToHundred() {
        Update = ""
        Random = Int.random(in: 1...100)
        let welp = String(Random)
        Update = welp
    }
    
    func LeftOrRight() {
        Update = ""
        Random = Int.random(in: 0...1)
        let welp = LD[Random]
        Update = welp
        
    }
    
    func Custom() {
        Random = Int.random(in: LowestValue...HighestValue)
        let welp = String(Random)
        Update = welp
        
    }
    
    func WhyNot() {
        Random = 177013
        let sugoi = String(Random)
        Update = sugoi
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


