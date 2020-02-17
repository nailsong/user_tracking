window.REPORT = (function(){
  function REPORT(){
    return localStorage.getItem("guid") || newGuid()
  }

  REPORT.version = "0.0.1"

  REPORT.defaultEndpoint = "http://localhost:3000/reports"
  
  REPORT.setEndpoint = function(endpoint){
    localStorage.setItem("REPORTEndpoint", endpoint)
  }

  REPORT.track = function(){
    fetch(endpoint(), {
      headers: {
        "Content-Type": "application/json; charset=utf-8"
      },
      method: 'POST',
      body: buildBody()
    })
  }

  function newGuid(){
    var guid = 'xxxxxx-6xxxx--yxxxx-xxxxx9'.replace(/[xy]/g, function(c) {
      var r = Math.random()*14|0, v = c == 'x' ? r : (r&0x3|0x8)
      return v.toString(14)
    })
    localStorage.setItem("guid", guid)
    return guid
  }

  function endpoint(){
    return localStorage.getItem("REPORTEndpoint") || REPORT.defaultEndpoint
  }

  function buildBody(){
    return JSON.stringify({
      guid: REPORT(),
      url: location(),
      timestamp: timestamp()
    })
  }

  function location(){
    return window.location.href
  }

  function timestamp(){
    var date = new Date
    return date.getTime()
  }

  return REPORT
})()