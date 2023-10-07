//
//  round2.swift
//  taekwondo1.0
//
//  Created by Greenpopsicle 📸 on 2023-08-06.
//

import SwiftUI

struct round2: View {
    @EnvironmentObject var round2: pointCounter2
    
    @Binding var athleteName:String
    @Binding var opponentName:String
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255).ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 0) {
                        Group {
                            Text("ROUND 2")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .frame(height: 40)
                                .background(.green)
                                .foregroundColor(.white)
                            
                            HStack(alignment: .center, spacing: 0) {
                                Spacer().frame(minWidth:110)
                                Text("CLOSE")
                                    .padding(.trailing, 35.0)
                                    .frame(minWidth:105,maxWidth: .infinity)
                                Text("OPEN").padding(.trailing, 21.0)
                                    .frame(minWidth:105,maxWidth: .infinity)
                            }.frame(maxWidth: .infinity)
                             .frame(height: 50)
                             .background(.white)
                        }
                        
                        //OPEN/CLOSE STANDS
                        Grid {
                            Divider().gridCellUnsizedAxes(.horizontal)
                            //i=0,1
                            GridRow {
                                Text("STANDS")
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                Group {
                                    Button {round2.subCount(scoreIdx: 0)} label: {Text("-")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.red)
                                        .cornerRadius(5)
                                    Text(String(round2.printScore(scoreIdx: 0)))
                                    Button {round2.addCount(scoreIdx: 0)} label: {Text("+")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.cyan)
                                        .cornerRadius(5)
                                }
                                Color.clear.gridCellUnsizedAxes([.horizontal])
                                Group {
                                    Button {round2.subCount(scoreIdx: 1)} label: {Text("-")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.red)
                                        .cornerRadius(5)
                                    Text(String(round2.printScore(scoreIdx: 1)))
                                    Button {round2.addCount(scoreIdx: 1)} label: {Text("+")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.cyan)
                                        .cornerRadius(5)
                                }
                            }.frame(maxWidth: .infinity)
                            Divider().gridCellUnsizedAxes(.horizontal)
                        }.frame(maxWidth: .infinity)
                        .background(.white)
                        
                        //LEFT/RIGHT LEG
                        HStack(alignment: .center, spacing: 0) {
                            Spacer().frame(minWidth:110)
                            Text("LEFT")
                                .padding(.trailing, 30.0)
                                .frame(minWidth:105,maxWidth: .infinity)
                            Text("RIGHT").padding(.trailing, 20.0)
                                .frame(minWidth:105,maxWidth: .infinity)
                        }.frame(maxWidth: .infinity)
                         .frame(height: 50)
                         .background(.white)
                        
                        Grid {
                            Divider().gridCellUnsizedAxes(.horizontal)
                            //i=2,3
                            GridRow {
                                Text("FRONT LEG")
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                Group {
                                    Button {round2.subCount(scoreIdx: 2)} label: {Text("-")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.red)
                                        .cornerRadius(5)
                                    Text(String(round2.printScore(scoreIdx: 2)))
                                    Button {round2.addCount(scoreIdx: 2)} label: {Text("+")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.cyan)
                                        .cornerRadius(5)
                                }
                                Color.clear.gridCellUnsizedAxes([.horizontal])
                                Group {
                                    Button {round2.subCount(scoreIdx: 3)} label: {Text("-")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.red)
                                        .cornerRadius(5)
                                    Text(String(round2.printScore(scoreIdx: 3)))
                                    Button {round2.addCount(scoreIdx: 3)} label: {Text("+")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.cyan)
                                        .cornerRadius(5)
                                }
                            }.frame(maxWidth: .infinity)
                            Divider().gridCellUnsizedAxes(.horizontal)
                            //i=4,5
                            GridRow {
                                Text("BACK LEG")
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                Group {
                                    Button {round2.subCount(scoreIdx: 4)} label: {Text("-")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.red)
                                        .cornerRadius(5)
                                    Text(String(round2.printScore(scoreIdx: 4)))
                                    Button {round2.addCount(scoreIdx: 4)} label: {Text("+")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.cyan)
                                        .cornerRadius(5)
                                }
                                Color.clear.gridCellUnsizedAxes([.horizontal])
                                Group {
                                    Button {round2.subCount(scoreIdx: 5)} label: {Text("-")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.red)
                                        .cornerRadius(5)
                                    Text(String(round2.printScore(scoreIdx: 5)))
                                    Button {round2.addCount(scoreIdx: 5)} label: {Text("+")}
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                        .background(.cyan)
                                        .cornerRadius(5)
                                }
                            }.frame(maxWidth: .infinity)
                            Divider().gridCellUnsizedAxes(.horizontal)
                        }
                        .frame(maxWidth: .infinity)
                        .background(.white)
                        
                        Group {
                            Spacer().frame(height: 70)
                            
                            HStack(alignment: .center, spacing: 0) {
                                Text("TECHNIQUES").frame(minWidth: 110, maxWidth: .infinity)
                                Text("LEFT")
                                    .padding(.trailing, 30.0)
                                    .frame(minWidth:105,maxWidth: .infinity)
                                Text("RIGHT").padding(.trailing, 20.0)
                                    .frame(minWidth:105,maxWidth: .infinity)
                            }.frame(maxWidth: .infinity)
                             .frame(height: 53)
                             .background(.white)
                        }
                        
                        Grid {
                            Divider().gridCellUnsizedAxes(.horizontal)
                            Group {
                                //i=6,7
                                GridRow {
                                    Text("CUT")
                                        .frame(minWidth: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                    Group {
                                        Button {round2.subCount(scoreIdx: 6)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 6)))
                                        Button {round2.addCount(scoreIdx: 6)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                    Color.clear.gridCellUnsizedAxes([.horizontal])
                                    Group {
                                        Button {round2.subCount(scoreIdx: 7)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 7)))
                                        Button {round2.addCount(scoreIdx: 7)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                }.frame(maxWidth: .infinity)
                                Divider().gridCellUnsizedAxes(.horizontal)
                                
                                //i=8,9
                                GridRow {
                                    Text("APAL")
                                        .frame(minWidth: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                    Group {
                                        Button {round2.subCount(scoreIdx: 8)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 8)))
                                        Button {round2.addCount(scoreIdx: 8)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                    Color.clear.gridCellUnsizedAxes([.horizontal])
                                    Group {
                                        Button {round2.subCount(scoreIdx: 9)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 9)))
                                        Button {round2.addCount(scoreIdx: 9)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                }.frame(maxWidth: .infinity)
                                Divider().gridCellUnsizedAxes(.horizontal)
                                
                                //i=10,11
                                GridRow {
                                    Text("CHIKI")
                                        .frame(minWidth: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                    Group {
                                        Button {round2.subCount(scoreIdx: 10)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 10)))
                                        Button {round2.addCount(scoreIdx: 10)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                    Color.clear.gridCellUnsizedAxes([.horizontal])
                                    Group {
                                        Button {round2.subCount(scoreIdx: 11)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 11)))
                                        Button {round2.addCount(scoreIdx: 11)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                }.frame(maxWidth: .infinity)
                                Divider().gridCellUnsizedAxes(.horizontal)
                            }
                            
                            Group {
                                //i=12,13
                                GridRow {
                                    Text("DOLYO")
                                        .frame(minWidth: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                    Group {
                                        Button {round2.subCount(scoreIdx: 12)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 12)))
                                        Button {round2.addCount(scoreIdx: 12)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                    Color.clear.gridCellUnsizedAxes([.horizontal])
                                    Group {
                                        Button {round2.subCount(scoreIdx: 13)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 13)))
                                        Button {round2.addCount(scoreIdx: 13)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                }.frame(maxWidth: .infinity)
                                Divider().gridCellUnsizedAxes(.horizontal)
                                
                                //i=14,15
                                GridRow {
                                    Text("BACK KICK")
                                        .frame(minWidth: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                    Group {
                                        Button {round2.subCount(scoreIdx: 14)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 14)))
                                        Button {round2.addCount(scoreIdx: 14)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                    Color.clear.gridCellUnsizedAxes([.horizontal])
                                    Group {
                                        Button {round2.subCount(scoreIdx: 15)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 15)))
                                        Button {round2.addCount(scoreIdx: 15)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                }.frame(maxWidth: .infinity)
                                Divider().gridCellUnsizedAxes(.horizontal)
                                //i=16,17
                                GridRow {
                                    Text("PUNCH")
                                        .frame(minWidth: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                    Group {
                                        Button {round2.subCount(scoreIdx: 16)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 16)))
                                        Button {round2.addCount(scoreIdx: 16)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                    Color.clear.gridCellUnsizedAxes([.horizontal])
                                    Group {
                                        Button {round2.subCount(scoreIdx: 17)} label: {Text("-")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.red)
                                            .cornerRadius(5)
                                        Text(String(round2.printScore(scoreIdx: 17)))
                                        Button {round2.addCount(scoreIdx: 17)} label: {Text("+")}
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(.white)
                                            .background(.cyan)
                                            .cornerRadius(5)
                                    }
                                }.frame(maxWidth: .infinity)
                                Divider().gridCellUnsizedAxes(.horizontal)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(.white)
                        
                        Group {
                            Spacer().frame(height: 20)
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
                                TextField("", text: $round2.athleteScore).keyboardType(.decimalPad).padding(.horizontal)
                                    .frame(width:110, height: 45)
                                    .fontWeight(.bold)
                                    .overlay(RoundedRectangle(cornerRadius: 5)
                                                .stroke(.gray, lineWidth: 2))
                                Spacer().frame(width:0.2)
                                TextField("", text: $round2.opponentScore).keyboardType(.decimalPad).padding(.horizontal)
                                    .frame(width:110, height: 45)
                                    .fontWeight(.bold)
                                    .overlay(RoundedRectangle(cornerRadius: 5)
                                                .stroke(.gray, lineWidth: 2))
                            }
                            .padding(.trailing, 20.0)
                            .frame(maxWidth: .infinity)
                            .frame(minHeight: 60)
                            .background(.white)
                        }
                        
                        Group {
                            Spacer().frame(height: 10)
                            HStack {
                                Text("ROUND 2 INTENSITY (1-5)")
                                TextField("", text: $round2.roundIntensity).keyboardType(.decimalPad).padding(.horizontal)
                                    .frame(width:80, height: 45)
                                    .fontWeight(.bold)
                                    .overlay(RoundedRectangle(cornerRadius: 5)
                                                .stroke(.gray, lineWidth: 2))
                                    .background(.white)
                            }.frame(maxWidth: .infinity)
                             .frame(minHeight: 60)
                            
                            Spacer().frame(height: 40)
                            
                            HStack {
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    Text("ROUND 1").foregroundColor(.blue)
                                })
                                Spacer()
                                NavigationLink(destination: round3(athleteName: $athleteName, opponentName: $opponentName).navigationBarBackButtonHidden(true)) {
                                    Text("ROUND 3")
                                        .foregroundColor(.blue)
                                }
                            }.padding(.horizontal, 50.0).frame(maxWidth: .infinity)
                            
                            Spacer().frame(height: 25)
                        }
                        //end of VStack
                    }
                    //end of ScrollView
                }
                .font(.system(size: 18))
                .fontWeight(.bold)
                .foregroundColor(.black)
            }
        }
        .environmentObject(round2)
    }
}

struct round2_Previews: PreviewProvider {
    static var previews: some View {
        round2(athleteName: .constant("ATHLETE"), opponentName: .constant("OPPONENT")).environmentObject(pointCounter2())
    }
}
