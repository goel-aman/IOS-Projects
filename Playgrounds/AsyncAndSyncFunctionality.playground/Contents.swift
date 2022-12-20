import UIKit

func executesAsync() {
    var result = 0
    
    DispatchQueue.global().async {
        result = 10 * 10
        print(result)
    }
    
    print(result)
}


func executesSync() {
    var result = 0
    
    DispatchQueue.global().sync {
        result = 10 * 10
        print("hello world")
        print(result)
    }
    
    print(result)
}


//executesAsync()
executesSync()
