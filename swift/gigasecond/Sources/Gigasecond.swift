import Foundation

struct Gigasecond {
  let description: String
  
  init?(from: String) {
    let formatter = DateFormatter()    
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"    
    description = formatter.string(from: Date(timeInterval: 1000000000, since: formatter.date(from: from)!))
  }
  
}