window.report = (function(){
  function report(){
    return localStorage.getItem('guid') || newGuid()
  }

  report.defaultEndpoint = 'http://localhost:3000/reports'
  
  report.setEndpoint = function(endpoint){
    localStorage.setItem("reportEndpoint", endpoint)
  }

  report.track = function(){
    fetch(endpoint(), {
      headers: {
        "Content-Type": "application/json; charset=utf-8"
      },
      method: 'POST',
      body: paramsBody()
    })
  }

  function newGuid(){
    var guid = 'xxxxxx-6xxxx--yxxxx-xxxxx9'.replace(/[xy]/g, function(c) {
      var rdm = Math.random()*14|0, v = c == 'x' ? rdm : (rdm&0x3|0x8)
      return v.toString(14)
    })
    localStorage.setItem('guid', guid)
    return guid
  }

  function endpoint(){
    return localStorage.getItem('reportEndpoint') || report.defaultEndpoint
  }

  function paramsBody(){
    return JSON.stringify({
      guid: report(),
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

  return report
})()