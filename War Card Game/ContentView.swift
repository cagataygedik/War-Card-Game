//
//  ContentView.swift
//  War Card Game
//
//  Created by Celil Çağatay Gedik on 6.09.

import SwiftUI

struct ContentView: View{

    @State var playerCard = "card2"
    @State var cpuCard = "card6"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
        VStack{
            Spacer()
            Image("logo-1")
            Spacer()
            HStack()
            {
               Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
               
                }
            Spacer()
            
            Button(action: {
                
                //generate a random number 2 to 14
                let playerRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                
                //update the cards
                playerCard = "card" + String(playerRand)
                cpuCard = "card" + String(cpuRand)
                
                
                //update the score
                if playerRand > cpuRand {
                    playerScore += 1
                }
                else if cpuRand > playerScore{
                    cpuScore += 1
                }
                
                
                
            }, label: {
                Image("dealbutton")
            })
            
            Spacer()
            
            HStack() {
                
                Spacer()
                VStack {
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                        
                    Text(String(playerScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
                Spacer()
                
                VStack {
                    Text("CPU")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                        
                    Text(String(cpuScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }
            
                Spacer()
            }
            Spacer()
                
        }
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
