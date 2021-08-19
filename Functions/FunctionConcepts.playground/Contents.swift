func greeting(_ name: String){
    print("Hello \(name)")
}
greeting("K.A.H")

func greeting1(_ name: String) -> Bool{
    if name == "K.A.H" {
        return true
    }else {
        return false
    }
}

func table(value: Int){
    for i in Range(1...10){
        print("\(value) x \(i) = \(value * i)")
    }
}

var message = greeting1("John")
print(message)
table(value: 5)
