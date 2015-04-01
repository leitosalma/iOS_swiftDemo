//Note that you do not necessarily need to subclass anything (unlike in Objective-C, where you must subclass NSObject or something that derives from NSObject).

class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
//    Initializers are always named init
    init(total: Double, taxPct: Double) {
        // self is necessary only for the properties with the same name
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        println("15%: \(calcTipWithTipPct(0.15))")
        println("18%: \(calcTipWithTipPct(0.18))")
        println("20%: \(calcTipWithTipPct(0.20))")
    }
}

class SubClassSample :TipCalculator {

}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()