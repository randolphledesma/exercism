import Foundation

class Gigasecond {
  let from: Date
  let dateFormat: DateFormatter
  let interval: TimeInterval = TimeInterval(1000000000)
  
  var description: String {
    get {
      return dateFormat.string(from: Date(timeInterval: interval, since: from))
    }
  }
  
  init?(from: String) {
    dateFormat = DateFormatter()
    dateFormat.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
    let date: Date? = dateFormat.date(from: from)
    if let date = date {
      self.from = date
    }
    else {
      return nil
    }
  }
}