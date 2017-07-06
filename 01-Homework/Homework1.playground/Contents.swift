import UIKit

class Notebook
{
    var date: DateFormatter {
        let format = DateFormatter()
        format.dateFormat = "yyyy.mm.dd" //Чомусь не працює
        return format
    }
    var name: String
    var text = ""
    var tags = [String]()
    init(date: Date, name: String) {
        self.name = name
        self.tags = []
    }
    convenience init() {
        self.init(date: Date(), name: "first")
    }
    
    func description() -> String {
        return "\(date) \n \(tags) \n \(name) \n \(text)"
    }
    
    
}

var firstNoteBook = Notebook()

var printA = firstNoteBook.description()
print (printA)

var SecondNotebook = Notebook()

SecondNotebook.name = "An amazing story"
SecondNotebook.text = "Two iPhones walk into the bar. I forget the rest..."
SecondNotebook.tags = ["iPhone4","Gizmodo", "Leaked"]
SecondNotebook.description()
var printB = SecondNotebook.description()
print (printB)
