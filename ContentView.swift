//
//  ContentView.swift
//  CasinoSlot
//
//  Created by Артур on 11.11.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var symbols = ["K", "Q", "J", "10", "Anubis", "Man", "Osiris", "BOOKOFDEAD" ]
    @State private var numbers = [7, 5, 5, 5, 7, 5, 5, 5, 7]
    @State private var credits = 10000
    @State private var Win = 0
    @State private var betAmount = 50
    @State private var Lost = false
    @State private var Animated: Bool = false
    @State private var BonusGame: Bool = false
    @State private var Book1: Bool = false
    @State private var BonusSymbol: String = ""
//    @State private var BonSymbol: String = ""
    @State private var BonusChance: Int = 0
    @State private var BonusStarting: Int = 0
    @State private var EndBonus = 9
    @State private var BS: Int = 0
    @State private var first = 0
    @State private var second = 0
    @State private var third = 0
    @State private var WinAmount = 0
    @State private var ShowTotalWin : Bool = false
    
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            
            Image("SLOT")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5)
            VStack{
            Image("LOGO")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.1)
                Spacer().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.8)
                
               
            }
            
           
                VStack(alignment: .center, spacing: 0) {
                    
                    HStack {
                        VStack{
                        ZStack{
                            ReelView()
                            Image(symbols[numbers[0]])
                                .resizable()
                                .frame(width: 110, height: 110)
                                .modifier(ImageModifier())
                                .opacity(Animated ? 1 : 0.2)
                                .offset(y: Animated ? 0 : -50)
                                .animation(.easeOut(duration: 0.6))
                                .onAppear(perform: {
                                    Animated.toggle()
                                })
                        }
                            
                            ZStack{
                                ReelView()
                                Image(symbols[numbers[1]])
                                    .resizable()
                                    .frame(width: 110, height: 110)
                                    .modifier(ImageModifier())
                                    .opacity(Animated ? 1 : 0.2)
                                    .offset(y: Animated ? 0 : -50)
                                    .animation(.easeOut(duration: 0.6))
                                    .onAppear(perform: {
                                        Animated.toggle()
                                    })
                            }
                            ZStack{
                                ReelView()
                                Image(symbols[numbers[2]])
                                    .resizable()
                                    .frame(width: 110, height: 110)
                                    .modifier(ImageModifier())
                                    .opacity(Animated ? 1 : 0.2)
                                    .offset(y: Animated ? 0 : -50)
                                    .animation(.easeOut(duration: 0.6))
                                    .onAppear(perform: {
                                        Animated.toggle()
                                    })
                            }
                        }
                        VStack{
                        ZStack{
                            ReelView()
                            Image(symbols[numbers[3]])
                                .resizable()
                                .frame(width: 110, height: 110)
                                .modifier(ImageModifier())
                                .opacity(Animated ? 1 : 0.2)
                                .offset(y: Animated ? 0 : -50)
                                .animation(.easeOut(duration: 0.6))
                                .onAppear(perform: {
                                    Animated.toggle()
                                })
                        }
                            ZStack{
                                ReelView()
                                Image(symbols[numbers[4]])
                                    .resizable()
                                    .frame(width: 110, height: 110)
                                    .modifier(ImageModifier())
                                    .opacity(Animated ? 1 : 0.2)
                                    .offset(y: Animated ? 0 : -50)
                                    .animation(.easeOut(duration: 0.6))
                                    .onAppear(perform: {
                                        Animated.toggle()
                                    })
                            }
                            ZStack{
                                ReelView()
                                Image(symbols[numbers[5]])
                                    .resizable()
                                    .frame(width: 110, height: 110)
                                    .modifier(ImageModifier())
                                    .opacity(Animated ? 1 : 0.2)
                                    .offset(y: Animated ? 0 : -50)
                                    .animation(.easeOut(duration: 0.6))
                                    .onAppear(perform: {
                                        Animated.toggle()
                                    })
                            }
                        }
                        VStack{
                        ZStack{
                            ReelView()
                            Image(symbols[numbers[6]])
                                .resizable()
                                .frame(width: 110, height: 110)
                                .modifier(ImageModifier())
                                .opacity(Animated ? 1 : 0.2)
                                .offset(y: Animated ? 0 : -50)
                                .animation(.easeOut(duration: 0.6))
                                .onAppear(perform: {
                                    Animated.toggle()
                                })
                        }
                            ZStack{
                                ReelView()
                                Image(symbols[numbers[7]])
                                    .resizable()
                                    .frame(width: 110, height: 110)
                                    .modifier(ImageModifier())
                                    .opacity(Animated ? 1 : 0.2)
                                    .offset(y: Animated ? 0 : -50)
                                    .animation(.easeOut(duration: 0.6))
                                    .onAppear(perform: {
                                        Animated.toggle()
                                    })
                            }
                            ZStack{
                                ReelView()
                                Image(symbols[numbers[8]])
                                    .resizable()
                                    .frame(width: 110, height: 110)
                                    .modifier(ImageModifier())
                                    .opacity(Animated ? 1 : 0.2)
                                    .offset(y: Animated ? 0 : -50)
                                    .animation(.easeOut(duration: 0.6))
                                    .onAppear(perform: {
                                        Animated.toggle()
                                    })
                            }
                        }
                    }
                   
                }
                .layoutPriority(2)
            
            if BonusGame{
                if !Book1{
                    
                ZStack {
                    Image("BonusBook")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.35)
                    
                    HStack {
                        Image(BonusSymbol)
                            .resizable()
                            .frame(width: 110, height: 110)
                        Spacer()
                            .frame(width: UIScreen.main.bounds.width * 0.4)
                    }
                }
                .onTapGesture {
                    Book1 = true
                }
                
                
            }
            }
            
                if ShowTotalWin{
                    ZStack{
                    Image("TOTALWIN")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.35)
                        Text("\(WinAmount)")
                            .font(.system(size: 45))
                            .foregroundColor(Color(#colorLiteral(red: 0.2530259788, green: 0.1106478646, blue: 0.07291140407, alpha: 1)))
                        
                    }
                    .onTapGesture {
                        ShowTotalWin = false
                    }
                }
                
            
           
            VStack {
                HStack(spacing: 10) {
                    VStack(spacing: 0)  {
                        Text("Coins:")
                            .font(.title)
                            .foregroundColor(.white)
                        ZStack{
                    Image("Coin")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.05)
                    Text(String(credits) + " Credits")
                        .foregroundColor(.white)
                        }
                    }
                    VStack(spacing: 0) {
                        Text(" ")
                            .font(.title)
                            .foregroundColor(.white)
                        ZStack{
                    Image("Coin")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.05)
                        
                    Text("Bet: " + String(betAmount))
                        .foregroundColor(.white)
                        }
                    }
                }
                Spacer()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.62)
            }
            VStack(spacing: 20){
                Spacer()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.7)
                
               
                   
                    Button(action: {
                        
                        withAnimation{
                            Animated = false
                        }
                        if credits < betAmount {
                            Lost = true
                        }
                        else{
                        Win = 0
                            if !BonusGame{
                        BonusChance += 1
                        credits -= betAmount
                            }
                            else{
                                BonusChance = 0
                            }
                        
                       processResults()
                            withAnimation{
                                Animated = true
                            }

                            processWin()
                            
                            
                        }
                        if BonusGame{
                            if EndBonus == 0{
                                BonusGame = false
                                Book1 = false
                                ShowTotalWin = true
                                
                            }
                            else {
                                EndBonus -= 1
                            }
                            WinAmount += Win
                        }
                        
                    })
                    {
                       Image("Spin")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.height * 0.085)
                        .cornerRadius(10)
                        
                    }
                   
                ZStack{
                    
                    HStack {
                        Button(action: {
                            if !BonusGame&&(betAmount>10){
                            betAmount -= 10
                            }
                        })
                        {
                            Text("-")
                                .font(.system(size: 45))
                                .foregroundColor(.black)
                        }
                        Spacer().frame(width: UIScreen.main.bounds.width * 0.38)
                    }
                    
                    Text("Coin Value: " + String(betAmount / 10))
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                    
                    HStack{
                        Spacer().frame(width: UIScreen.main.bounds.width * 0.38)
                        
                        Button(action: {
                            if !BonusGame{
                        betAmount += 10
                            }
                    })
                    {
                        Text("+")
                            .font(.system(size: 45))
                            .foregroundColor(.black)
                    }
                       
                }
                }
            
            }
          if (Win >= (betAmount * 15))&&(!BonusGame){
            
            VStack {
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.45)
                HStack{
                    Text("\(Win)")
                        .font(.title)
                        .foregroundColor(.yellow)
                    Image("BIGWIN")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.1)
                }
            }
            }
            
        }
    }
    func processResults(){
        if !BonusGame{
        BonusStarting = Int.random(in: (70-BonusChance)...(165-BonusChance))
        if BonusStarting <= 0{
            WinAmount = 0
            BS = Int.random(in: 0...symbols.count - 2)
            
            BonusSymbol = symbols[BS]
            
            first = Int.random(in: 0...2)
            second = Int.random(in: 3...5)
            third = Int.random(in: 6...8)
            EndBonus = 9
            
            numbers = numbers.map{_ in
                Int.random(in: 0...symbols.count - 2)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            numbers[first] = 7
            numbers[second] = 7
            numbers[third] = 7
            }
            
            
            
            BonusGame = true
            
        }
        else{
        numbers = numbers.map{_ in
            Int.random(in: 0...symbols.count - 2)
        }
        }
    }
       
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
        if BonusGame{
            numbers = numbers.map{_ in
                Int.random(in: 0...symbols.count - 2)
            }
            if numbers[0] == BS{
               numbers[1] = BS
                numbers[2] = BS
            }
            if numbers[1] == BS{
                numbers[0] = BS
                 numbers[2] = BS
             }
            if numbers[2] == BS{
                numbers[1] = BS
                 numbers[0] = BS
             }
            if numbers[3] == BS{
                numbers[4] = BS
                 numbers[5] = BS
             }
            if numbers[4] == BS{
                numbers[3] = BS
                 numbers[5] = BS
             }
            if numbers[5] == BS{
                numbers[4] = BS
                 numbers[3] = BS
             }
            if numbers[6] == BS{
                numbers[7] = BS
                 numbers[8] = BS
             }
            if numbers[7] == BS{
                numbers[6] = BS
                 numbers[8] = BS
             }
            if numbers[8] == BS{
                numbers[7] = BS
                 numbers[6] = BS
             }
        }
//        }
    }
    func processWin(){
        
        if numbers[0] == numbers[3] && numbers[3] == numbers[6] {
            
            if symbols[numbers[0]] == "10"
            {
            credits += betAmount*2
            Win += betAmount*2
            }
            else if symbols[numbers[0]] == "J" {
                credits += betAmount*3
                Win += betAmount*3
            }
            else if symbols[numbers[0]] == "Q" {
                credits += betAmount*4
                Win += betAmount*4
            }
            else if symbols[numbers[0]] == "K" {
                credits += betAmount*5
                Win += betAmount*5
            }
            else if symbols[numbers[0]] == "A" {
                credits += betAmount*6
                Win += betAmount*6
            }
            else if symbols[numbers[0]] == "Anubis" {
                credits += betAmount*10
                Win += betAmount*10
            }
            else if symbols[numbers[0]] == "Osiris" {
                credits += betAmount*15
                Win += betAmount*15
            }
            else if symbols[numbers[0]] == "Man" {
                credits += betAmount*20
                Win += betAmount*20
            }
        }
        if numbers[1] == numbers[4] && numbers[4] == numbers[7] {
            if symbols[numbers[1]] == "10"
            {
            credits += betAmount*2
                Win += betAmount*2
            }
            else if symbols[numbers[1]] == "J" {
                credits += betAmount*3
                Win += betAmount*3
            }
            else if symbols[numbers[1]] == "Q" {
                credits += betAmount*4
                Win += betAmount*4
            }
            else if symbols[numbers[1]] == "K" {
                credits += betAmount*5
                Win += betAmount*5
            }
            else if symbols[numbers[1]] == "A" {
                credits += betAmount*6
                Win += betAmount*6
            }
            else if symbols[numbers[1]] == "Anubis" {
                credits += betAmount*10
                Win += betAmount*10
            }
            else if symbols[numbers[1]] == "Osiris" {
                credits += betAmount*15
                Win += betAmount*15
            }
            else if symbols[numbers[1]] == "Man" {
                credits += betAmount*20
                Win += betAmount*20
            }
        }
        if numbers[2] == numbers[5] && numbers[5] == numbers[8] {
            if symbols[numbers[2]] == "10"
            {
            credits += betAmount*2
                Win += betAmount*2
            }
            else if symbols[numbers[2]] == "J" {
                credits += betAmount*3
                Win += betAmount*3
            }
            else if symbols[numbers[2]] == "Q" {
                credits += betAmount*4
                Win += betAmount*4
            }
            else if symbols[numbers[2]] == "K" {
                credits += betAmount*5
                Win += betAmount*5
            }
            else if symbols[numbers[2]] == "A" {
                credits += betAmount*6
                Win += betAmount*6
            }
            else if symbols[numbers[2]] == "Anubis" {
                credits += betAmount*10
                Win += betAmount*10
            }
            else if symbols[numbers[2]] == "Osiris" {
                credits += betAmount*15
                Win += betAmount*15
            }
            else if symbols[numbers[2]] == "Man" {
                credits += betAmount*20
                Win += betAmount*20
            }
        }
        if numbers[0] == numbers[4] && numbers[4] == numbers[8] {
            
            if symbols[numbers[0]] == "10"
            {
            credits += betAmount*2
            Win += betAmount*2
            }
            else if symbols[numbers[0]] == "J" {
                credits += betAmount*3
                Win += betAmount*3
            }
            else if symbols[numbers[0]] == "Q" {
                credits += betAmount*4
                Win += betAmount*4
            }
            else if symbols[numbers[0]] == "A" {
                credits += betAmount*5
                Win += betAmount*5
            }
            else if symbols[numbers[0]] == "Anubis" {
                credits += betAmount*10
                Win += betAmount*10
            }
            else if symbols[numbers[0]] == "Osiris" {
                credits += betAmount*15
                Win += betAmount*15
            }
            else if symbols[numbers[0]] == "Man" {
                credits += betAmount*20
                Win += betAmount*20
            }
        }

        if numbers[2] == numbers[4] && numbers[4] == numbers[6] {
            if symbols[numbers[2]] == "10"
            {
            credits += betAmount*2
                Win += betAmount*2
            }
            else if symbols[numbers[2]] == "J" {
                credits += betAmount*3
                Win += betAmount*3
            }
            else if symbols[numbers[2]] == "Q" {
                credits += betAmount*4
                Win += betAmount*4
            }
            else if symbols[numbers[2]] == "A" {
                credits += betAmount*5
                Win += betAmount*5
            }
            else if symbols[numbers[2]] == "Anubis" {
                credits += betAmount*10
                Win += betAmount*10
            }
            else if symbols[numbers[2]] == "Osiris" {
                credits += betAmount*15
                Win += betAmount*15
            }
            else if symbols[numbers[2]] == "Man" {
                credits += betAmount*20
                Win += betAmount*20
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
