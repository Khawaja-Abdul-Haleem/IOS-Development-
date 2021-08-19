struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func Fortify(_ town: String){
        print("Defence Increased of \(town)")
    }
}
var myTown = Town(name: "K.A.H_Land", citizens: ["JOHN", "William"], resources: ["Rice": 100, "Ore": 100])
myTown.citizens.append("Elly")
print(myTown.citizens)

var fridgeTown = Town(name: "FridgeTown", citizens: ["Micheal", "David"], resources: ["SugaraCane" : 100, "Wheat": 150])

fridgeTown.Fortify(fridgeTown.name)
myTown.Fortify(myTown.name)
