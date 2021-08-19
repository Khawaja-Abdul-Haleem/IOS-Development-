
protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("The Object takes off into air")
    }
        
}

class Bird {

    var isFemale = true
    
    func layEggs() {
        print("Birds make a new bird in a shell.")
    }
   
}

// inherit

class Eagle: Bird, CanFly {
    
    func soar() {
        print("The Eagle Glides in air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("Penguin Paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(object: CanFly) {
        object.fly()
    }
}

struct Airplane: CanFly{
    
}

let myPlane = Airplane()
myPlane.fly()
