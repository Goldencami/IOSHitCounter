import UIKit

struct app {
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
    
    var roundArr:[Int]
    
    init() {
        self.roundArr = [
            self.csCount, self.opCount,
            self.LfrontLegCount, self.RfrontLegCount,
            self.LbackLegCount, self.RbackLegCount,
            self.LcutCount, self.RcutCount,
            self.LapalCount, self.RapalCount,
            self.LchikiCount, self.RchikiCount,
            self.LdolyoCount, self.RdolyoCount,
            self.LBKCount, self.RBKCount,
            self.LpunchCount, self.RpunchCount
        ]
    }

    mutating func addCount(scoreIdx: Int) -> Int {
        roundArr[scoreIdx] += 1
        return roundArr[scoreIdx]
    }
    
    mutating func subCount(scoreIdx: Int) -> Int {
        if(roundArr[scoreIdx] > 0) {
            roundArr[scoreIdx] -= 1
        }
        return roundArr[scoreIdx]
    }
        
    func printScore(scoreIdx: Int) {
        print(roundArr[scoreIdx])
    }
    
    func printArr() {
        for score in roundArr {
            print(score)
        }
    }
}

var taekwondo = app()
taekwondo.addCount(scoreIdx: 1)
taekwondo.printScore(scoreIdx: 1)
