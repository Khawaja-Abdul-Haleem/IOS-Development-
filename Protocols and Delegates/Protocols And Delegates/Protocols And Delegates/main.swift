protocol AdvanceLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvanceLifeSupport?
    
    func assessSituation() {
        print("Can You Tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
    
}

struct Paramadic: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The Paramedic does chest compressions, 30 per second.")
    }
    
}

class Doctor: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The Doctor does chest compressions, 30 per second.")
    }
    
    func useStretheScope() {
        print("Listening For Heart Sounds")
    }
    
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by BeeGees")
    }
    
    func useElectricDrill() {
        print("Whirrr...")
    }
}


let emilio = EmergencyCallHandler()
//let pete = Paramadic(handler: emilio)
let kah = Surgeon(handler: emilio)
emilio.assessSituation()
emilio.medicalEmergency()
