//
//  end.swift
//  taekwondo1.0
//
//  Created by Greenpopsicle 📸 on 2023-08-06.
//

import SwiftUI

struct end: View {
    @EnvironmentObject var round1: pointCounter
    @EnvironmentObject var round2: pointCounter2
    @EnvironmentObject var round3: pointCounter3
    
    @Binding var athleteName:String
    @Binding var opponentName:String
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        var winnerName = displayWinner()
        
        ZStack {
            Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255).ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 0) {
                    Group {
                        //round 1
                        Group {
                            Text("ROUND 1")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .frame(height: 40)
                                .background(.green)
                                .foregroundColor(.white)

                            HStack(alignment: .center, spacing: 0) {
                                Spacer().frame(minWidth:120)
                                Text("CLOSE/LEFT")
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity)
                                Text("OPEN/RIGHT")
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity)
                            }.frame(maxWidth: .infinity)
                             .frame(height: 50)
                             .background(.white)
                        }
                        
                        //round 1 Grid
                        Grid {
                            Group {
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("STANDS").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 0))").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 1))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("FRONT LEG").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 2))").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 3))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("BACK LEG").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 4))").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 5))").frame(maxWidth: .infinity)
                                }
                            }

                            Group {
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("TECHNIQUES").frame(maxWidth: .infinity)
                                    Text("LEFT").frame(maxWidth: .infinity)
                                    Text("RIGHT").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("CUT").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 6))").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 7))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("APAL").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 8))").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 9))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("CHIKI").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 10))").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 11))").frame(maxWidth: .infinity)
                                }
                            }

                            Group {
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("DOLYO").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 12))").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 13))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("BACK KICK").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 14))").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 15))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("PUNCH").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 16))").frame(maxWidth: .infinity)
                                    Text("\(round1.printScore(scoreIdx: 17))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                            }
                        }.background(.white)
                        
                        Group {
                            Group {
                                HStack(alignment: .center, spacing: 0) {
                                    Spacer().frame(minWidth:110)
                                    Text(athleteName)
                                        .padding(.trailing, 30.0)
                                        .frame(minWidth:105,maxWidth: .infinity)
                                    Text(opponentName).padding(.trailing, 20.0)
                                        .frame(minWidth:105,maxWidth: .infinity)
                                }.frame(maxWidth: .infinity)
                                 .frame(minHeight: 40)
                                 .background(.blue)
                            }
                            
                            Group {
                                HStack(alignment: .center, spacing: 15) {
                                    Text("SCORE").frame(minWidth:100)
                                    Spacer().frame(width:0.2)
                                    Text(round1.athleteScore)
                                        .frame(width:110, height: 45)
                                        .fontWeight(.bold)
                                    Spacer().frame(width:0.2)
                                    Text(round1.opponentScore)
                                        .frame(width:110, height: 45)
                                        .fontWeight(.bold)
                                }
                                .padding(.trailing, 20.0)
                                .frame(maxWidth: .infinity)
                                .frame(minHeight: 60)
                                .background(.white)
                                Spacer().frame(height: 10)
                                Text("ROUND 1 INTENSITY: \(round1.roundIntensity)")
                            }
                        }
                    }
                    
                    Spacer().frame(height: 70)
                    //round 2
                    Group {
                        Group {
                            Text("ROUND 2")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .frame(height: 40)
                                .background(.green)
                                .foregroundColor(.white)

                            HStack(alignment: .center, spacing: 0) {
                                Spacer().frame(minWidth:120)
                                Text("CLOSE/LEFT")
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity)
                                Text("OPEN/RIGHT")
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity)
                            }.frame(maxWidth: .infinity)
                             .frame(height: 50)
                             .background(.white)
                        }
                        
                        //round 2 Grid
                        Grid {
                            Group {
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("STANDS").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 0))").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 1))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("FRONT LEG").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 2))").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 3))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("BACK LEG").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 4))").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 5))").frame(maxWidth: .infinity)
                                }
                            }

                            Group {
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("TECHNIQUES").frame(maxWidth: .infinity)
                                    Text("LEFT").frame(maxWidth: .infinity)
                                    Text("RIGHT").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("CUT").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 6))").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 7))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("APAL").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 8))").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 9))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("CHIKI").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 10))").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 11))").frame(maxWidth: .infinity)
                                }
                            }

                            Group {
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("DOLYO").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 12))").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 13))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("BACK KICK").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 14))").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 15))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("PUNCH").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 16))").frame(maxWidth: .infinity)
                                    Text("\(round2.printScore(scoreIdx: 17))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                            }
                        }.background(.white)
                        
                        Group {
                            Group {
                                HStack(alignment: .center, spacing: 0) {
                                    Spacer().frame(minWidth:110)
                                    Text(athleteName)
                                        .padding(.trailing, 30.0)
                                        .frame(minWidth:105,maxWidth: .infinity)
                                    Text(opponentName).padding(.trailing, 20.0)
                                        .frame(minWidth:105,maxWidth: .infinity)
                                }.frame(maxWidth: .infinity)
                                 .frame(minHeight: 40)
                                 .background(.blue)
                            }
                            
                            Group {
                                HStack(alignment: .center, spacing: 15) {
                                    Text("SCORE").frame(minWidth:100)
                                    Spacer().frame(width:0.2)
                                    Text(round2.athleteScore)
                                        .frame(width:110, height: 45)
                                        .fontWeight(.bold)
                                    Spacer().frame(width:0.2)
                                    Text(round2.opponentScore)
                                        .frame(width:110, height: 45)
                                        .fontWeight(.bold)
                                }
                                .padding(.trailing, 20.0)
                                .frame(maxWidth: .infinity)
                                .frame(minHeight: 60)
                                .background(.white)
                                Spacer().frame(height: 10)
                                Text("ROUND 2 INTENSITY: \(round2.roundIntensity)")
                            }
                        }
                    }
                    
                    Spacer().frame(height: 70)
                    //round 3
                    Group {
                        Group {
                            Text("ROUND 3")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .frame(height: 40)
                                .background(.green)
                                .foregroundColor(.white)

                            HStack(alignment: .center, spacing: 0) {
                                Spacer().frame(minWidth:120)
                                Text("CLOSE/LEFT")
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity)
                                Text("OPEN/RIGHT")
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity)
                            }.frame(maxWidth: .infinity)
                             .frame(height: 50)
                             .background(.white)
                        }
                        
                        //round 3 Grid
                        Grid {
                            Group {
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("STANDS").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 0))").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 1))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("FRONT LEG").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 2))").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 3))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("BACK LEG").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 4))").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 5))").frame(maxWidth: .infinity)
                                }
                            }

                            Group {
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("TECHNIQUES").frame(maxWidth: .infinity)
                                    Text("LEFT").frame(maxWidth: .infinity)
                                    Text("RIGHT").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("CUT").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 6))").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 7))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("APAL").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 8))").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 9))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("CHIKI").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 10))").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 11))").frame(maxWidth: .infinity)
                                }
                            }

                            Group {
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("DOLYO").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 12))").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 13))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("BACK KICK").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 14))").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 15))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                                GridRow {
                                    Text("PUNCH").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 16))").frame(maxWidth: .infinity)
                                    Text("\(round3.printScore(scoreIdx: 17))").frame(maxWidth: .infinity)
                                }
                                Divider().gridCellUnsizedAxes(.horizontal)
                            }
                        }.background(.white)
                        
                        Group {
                            Group {
                                HStack(alignment: .center, spacing: 0) {
                                    Spacer().frame(minWidth:110)
                                    Text(athleteName)
                                        .padding(.trailing, 30.0)
                                        .frame(minWidth:105,maxWidth: .infinity)
                                    Text(opponentName).padding(.trailing, 20.0)
                                        .frame(minWidth:105,maxWidth: .infinity)
                                }.frame(maxWidth: .infinity)
                                 .frame(minHeight: 40)
                                 .background(.blue)
                            }
                            
                            Group {
                                HStack(alignment: .center, spacing: 15) {
                                    Text("SCORE").frame(minWidth:100)
                                    Spacer().frame(width:0.2)
                                    Text(round3.athleteScore)
                                        .frame(width:110, height: 45)
                                        .fontWeight(.bold)
                                    Spacer().frame(width:0.2)
                                    Text(round3.opponentScore)
                                        .frame(width:110, height: 45)
                                        .fontWeight(.bold)
                                }
                                .padding(.trailing, 20.0)
                                .frame(maxWidth: .infinity)
                                .frame(minHeight: 60)
                                .background(.white)
                                Spacer().frame(height: 10)
                                Text("ROUND 3 INTENSITY: \(round3.roundIntensity)")
                            }
                            Spacer().frame(height: 30)
                        }
                    }
                    
                    Text("THE WINNER OF THE COMPETITION IS:\n\(winnerName)")
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                        
                    Spacer().frame(height: 45)
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("ROUND 3").foregroundColor(.blue)
                        })
                        
                        Spacer().frame(height: 25)
                    }.padding(.horizontal, 50.0).frame(maxWidth: .infinity)
                    
                    //end of VStack
                }
                //end of ScrollView
            }
            .font(.system(size: 18))
            .fontWeight(.bold)
            .foregroundColor(.black)
        }
    }
    
    func displayWinner() -> String {
        var R1athScore: Int = Int(round1.athleteScore)!
        var R2athScore: Int = Int(round2.athleteScore)!
        var R3athScore: Int = Int(round3.athleteScore)!
        
        var R1oppScore: Int = Int(round1.opponentScore)!
        var R2oppScore: Int = Int(round2.opponentScore)!
        var R3oppScore: Int = Int(round3.opponentScore)!
        
        var athTotScore: Int = R1athScore + R2athScore + R3athScore
        var oppTotScore: Int = R1oppScore + R2oppScore + R3oppScore
        //athlete won
        if(athTotScore > oppTotScore) {
            return self.athleteName
        }
        else if(athTotScore < oppTotScore) {
            return self.opponentName
        }
        else {
            return "BOTH TAEKWONDOINS ARE TIED"
        }
    }
    
}

struct end_Previews: PreviewProvider {
    static var previews: some View {
        end(athleteName: .constant("ATHLETE"), opponentName: .constant("OPPONENT")).environmentObject(pointCounter()).environmentObject(pointCounter2()).environmentObject(pointCounter3())
    }
}
