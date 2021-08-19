
protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEggs() {
        print("Birds make a new bird in a shell.")
    }
   
}

// inherit

class Eagle: Bird, CanFly {
    func fly() {
        print("The Bird flaps its wings & lift off into sky.")
    }
    
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
    func fly() {
        print("The Airplane uses its engine to lift off into air")
    }
    
    
}

let myPenguin = Penguin()
let myEagle = Eagle()
let myPlane = Airplane()
myEagle.fly()

let museum = FlyingMuseum()
museum.flyingDemo(object: myPlane)
