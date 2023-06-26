//
//  ContentView.swift
//  War Card Game
//
//  Created by Enes Demirel on 6/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var playerScore = 0
    @State var cpuCard = "back"
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                
                Spacer()
                Image("logo")
                Spacer()
                
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    self.deal()
                } label: {
                    Image("button")
                }

                
                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    
                    VStack {
                        Text("Computer")
                            .font(.headline)
                            .foregroundColor(.white)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                
            }
            
        }

        
        
    }
    
     func deal() {
        
        let randomisedPlayerCard = Int.random(in: 2...14)
        let randomisedCpuCard = Int.random(in: 2...14)
        
        playerCard =  "card" + String(randomisedPlayerCard)
        cpuCard = "card" + String(randomisedCpuCard)
        
        if (randomisedPlayerCard > randomisedCpuCard) {
            playerScore = playerScore + 1
        } else if (randomisedPlayerCard < randomisedCpuCard) {
            cpuScore = cpuScore + 1
        } else {
            
        }
         
         

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
