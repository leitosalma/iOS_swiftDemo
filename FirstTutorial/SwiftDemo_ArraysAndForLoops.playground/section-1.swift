// 1
class TipCalculator {
    
    // 2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    // 3
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // 4
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    // 5
    func printPossibleTips() {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        for possibleTip in possibleTipsInferred {
            println("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
        }
        
        for i in 0..<possibleTipsInferred.count {
            let possibleTip = possibleTipsInferred[i]
            println("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
        }

    }
    
}

// 6
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()


