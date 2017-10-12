struct Year {  
  var calendarYear = 0
  var isLeapYear: Bool {
    if calendarYear % 400 == 0 {
      return true
    } else if calendarYear % 100 == 0 {
      return false
    }
    return calendarYear % 4 == 0
  }
}