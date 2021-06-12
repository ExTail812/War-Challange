//
//  ContentView.swift
//  War-Challenge
//
//  Created by Vladislav Kršík on 28.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var playerCard = "card6"
    @State private var CpuCard = "card9"
    @State private var playerScore = 0
    @State private var CpuScore = 0
    
    
    var body: some View {
      
        ZStack {
            Image("background")
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()

            VStack {
                Spacer()
                Image("logo")
               Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(CpuCard)
                    Spacer()
                    
                
                }
                Spacer()
                
          
               
                Button(action:{
                    
                    //generate random numbers
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    
                    //update the cards
                    playerCard = "card" + String(playerRand)
                    CpuCard = "card" + String(cpuRand)
                
                    
                // implement if statements
                    
                    if playerRand > cpuRand { playerScore += 1}
                    else if cpuRand > playerRand
                    { CpuScore += 1
                        
                    }
                    
                    
                    //update the score
                    playerScore += 1
                    CpuScore += 1
                } , label: {
                    Image("dealbutton")})
                
        
            
                Spacer()
                HStack{
                    Spacer()
                    VStack{

                        Text("Player")
                            .font(.largeTitle)
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.largeTitle)
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                        Text(String(CpuScore))
                            .font(.largeTitle)
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                        
                }
                    Spacer()
            }
                Spacer()
            
            }
        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
          
        }
           
            
            
    }
}


}
