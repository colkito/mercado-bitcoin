# Establish the root object, `window` in the browser, or `global` on the server.
root = exports ? (@conversion = {})

# Returns the last prices
# Valid methods: lastquote, lastquoteaverage
#Valid symbols: mtgoxUSD, bitstampUSD, ARSUSDB
root.last = (method, symbol, callback) ->
  url = _getURL(method) + "&symbol=#{symbol}"
  _response url, callback

#Returns the averages prices
# Valid methods: dollarBlueMarketAveragePrice, bitcoinMarketLast24HoursAveragePrice, bitstampLast24HoursAveragePrice, mtGoxLast24HoursAveragePrice,
root.average = (method, callback) ->
  url = _getURL(method)
  _response url, callback

# Returns the conversions between ARS and BTC
# Valid methods: convert_BTC_ARS_Last, convert_BTC_ARS_Avg, convert_ARS_BTC_Last, convert_ARS_BTC_Avg
root.convert = (method, amount, callback) ->
  url = _getURL(method) + "&amount=#{amount}"
  _response url, callback


# Private function to get the full URL
_getURL = (method) ->
  "http://www.mercado-bitcoin.com.ar/api/#{method}?format=json"

# Private funtion to get the response
_response = (url, callback) ->
  _request url, (err, response) ->
    try
      json = JSON.parse response
      callback null, json
    catch err
      callback err, null

# Private function to make the request
_request = (url, callback) ->
  request = _xhr()
  request.open 'GET', url, true
  request.onreadystatechange = () ->
    if request.readyState is 4
      if request.status is 200
        callback no, request.responseText
      else
        callback yes, null

  request.send null

# Private function for initializing a `XMLHttpRequest` object.
_xhr = ->
  if ActiveXObject?
    request = new ActiveXObject('Microsoft.XMLHTTP')
  else if XMLHttpRequest?
    request = new XMLHttpRequest()
  else if require?
    request = new (require('xmlhttprequest').XMLHttpRequest)

  request
