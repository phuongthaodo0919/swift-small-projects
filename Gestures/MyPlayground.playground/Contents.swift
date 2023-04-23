import Foundation

@propertyWrapper
struct MyUpperCase {
    
    private var val: String = ""
    
    var wrappedValue: String {
        get { val }
        set {
            if let url = newValue.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed){
                self.val = url
        }
            
        }
    }
}

struct Driver {
    
    @MyUpperCase
    var license: String
    
    init (li: String){
        self.license = li
    }
    
}


print(Driver(li: "ionJO.oi").license)
