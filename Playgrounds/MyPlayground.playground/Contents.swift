import UIKit

var greeting = "Hello, playground"

DispatchQueue.main.async {
    print("Hello world")
}

if Thread.isMainThread {
    print("hey do you know you are working in main thread")
}

//DispatchQueue.main.sync {
//    print("Hi aman how are you")
//}
