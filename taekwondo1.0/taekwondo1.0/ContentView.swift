//
//  ContentView.swift
//  taekwondo1.0
//
//  Created by Greenpopsicle 📸 on 2023-08-03.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var round1: pointCounter = pointCounter()
    @StateObject var round2: pointCounter2 = pointCounter2()
    @StateObject var round3: pointCounter3 = pointCounter3()
    
    @State private var athleteName:String = ""
    @State private var weight:String = ""
    
    @State private var competition:String = ""
    @State private var opponentName:String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255).ignoresSafeArea()
                ScrollView {
                    VStack {
                        Text("Taekwondo Hit Counter")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                        
                        Group {
                            Text("ATHLETE'S INFORMATION")
                                .font(.system(size: 27))
                                .padding(.vertical, 8.0)
                            
                            Text("ATHLETE'S NAME:")
                                .font(.system(size: 19))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.vertical, -2.0)
                            TextField("ATHLETE'S NAME", text: $athleteName)
                                .padding(.horizontal, 8.0)
                                .frame(height: 45)
                                .overlay(RoundedRectangle(cornerRadius: 5)
                                            .stroke(.gray, lineWidth: 2))
                                .background(.white)
                                .foregroundColor(.black)
                            
                            Text("WEIGHT:")
                                .font(.system(size: 19))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.vertical, -2.0)
                            TextField("WEIGHT (KG)", text: $weight)
                                .padding(.horizontal, 8.0)
                                .frame(height: 45)
                                .overlay(RoundedRectangle(cornerRadius: 5)
                                            .stroke(.gray, lineWidth: 2))
                                .background(.white)
                                .foregroundColor(.black)
                        }
                        
                        Spacer().frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 50.0)
                        
                        Group {
                            Text("MATCH INFORMATION")
                                .font(.system(size: 27))
                                .padding(.vertical, 8.0)
                            
                            Text("COMPETITION:")
                                .font(.system(size: 19))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.vertical, -2.0)
                            TextField("COMPETITION", text: $competition)
                                .padding(.horizontal, 8.0)
                                .frame(height: 45)
                                .overlay(RoundedRectangle(cornerRadius: 5)
                                            .stroke(.gray, lineWidth: 2))
                                .background(.white)
                                .foregroundColor(.black)
                            Text("OPPONENT:")
                                .font(.system(size: 19))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.vertical, -2.0)
                            TextField("OPPONENT'S NAME", text: $opponentName)
                                .padding(.horizontal, 8.0)
                                .frame(height: 45)
                                .overlay(RoundedRectangle(cornerRadius: 5)
                                            .stroke(.gray, lineWidth: 2))
                                .background(.white)
                                .foregroundColor(.black)
                        }
                        Spacer().frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 80.0)
                        
                        NavigationLink(destination: taekwondo1_0.round1(athleteName: $athleteName, opponentName: $opponentName).navigationBarBackButtonHidden(true)) {
                            Text("START")
                                .frame(width: 150, height: 45)
                                .background(.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }.padding()
                     .fontWeight(.bold)
                     .foregroundColor(.black)
                }
            }
        }
        .environmentObject(round1)
        .environmentObject(round2)
        .environmentObject(round3)
    }
}

public class pointCounter: ObservableObject {
    var csCount:Int = 0
    var opCount:Int = 0
    var LfrontLegCount:Int = 0
    var RfrontLegCount:Int = 0
    var LbackLegCount:Int = 0
    var RbackLegCount:Int = 0
    var LcutCount:Int = 0
    var RcutCount:Int = 0
    var LapalCount:Int = 0
    var RapalCount:Int = 0
    var LchikiCount:Int = 0
    var RchikiCount:Int = 0
    var LdolyoCount:Int = 0
    var RdolyoCount:Int = 0
    var LBKCount:Int = 0
    var RBKCount:Int = 0
    var LpunchCount:Int = 0
    var RpunchCount:Int = 0
    
    @Published var athleteScore: String = "0"
    @Published var opponentScore: String = "0"
    @Published var roundIntensity: String = "1"
    
    @Published var roundArr:[Int]
    
    init() {
        roundArr = [
            csCount, opCount,
            LfrontLegCount, RfrontLegCount,
            LbackLegCount, RbackLegCount,
            LcutCount, RcutCount,
            LapalCount, RapalCount,
            LchikiCount, RchikiCount,
            LdolyoCount, RdolyoCount,
            LBKCount, RBKCount,
            LpunchCount, RpunchCount
        ]
    }

    func addCount(scoreIdx: Int) {
        self.roundArr[scoreIdx] += 1
    }
    
    func subCount(scoreIdx: Int) {
        if(roundArr[scoreIdx] > 0) {
            self.roundArr[scoreIdx] -= 1
        }
    }
        
    func printScore(scoreIdx: Int) -> Int {
        return self.roundArr[scoreIdx];
    }
}

class pointCounter2: pointCounter{}
                        
class pointCounter3: pointCounter{}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
