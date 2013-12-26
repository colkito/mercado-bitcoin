(function() {
  var average, convert, last, _getURL, _request, _response, _xhr;

  last = function(method, symbol, callback) {
    var url;
    url = _getURL(method) + ("&symbol=" + symbol);
    return _response(url, callback);
  };

  average = function(method, callback) {
    var url;
    url = _getURL(method);
    return _response(url, callback);
  };

  convert = function(method, amount, callback) {
    var url;
    url = _getURL(method) + ("&amount=" + amount);
    return _response(url, callback);
  };

  _getURL = function(method) {
    return "http://www.mercado-bitcoin.com.ar/api/" + method + "?format=json";
  };

  _response = function(url, callback) {
    return _request(url, function(err, response) {
      var json;
      try {
        json = JSON.parse(response);
        return callback(null, json);
      } catch (_error) {
        err = _error;
        return callback(err, null);
      }
    });
  };

  _request = function(url, callback) {
    var request;
    request = _xhr();
    request.open('GET', url, true);
    request.onreadystatechange = function() {
      if (request.readyState === 4) {
        if (request.status === 200) {
          return callback(false, request.responseText);
        } else {
          return callback(true, null);
        }
      }
    };
    return request.send(null);
  };

  _xhr = function() {
    var request;
    if (typeof ActiveXObject !== "undefined" && ActiveXObject !== null) {
      request = new ActiveXObject('Microsoft.XMLHTTP');
    } else if (typeof XMLHttpRequest !== "undefined" && XMLHttpRequest !== null) {
      request = new XMLHttpRequest();
    } else if (typeof require !== "undefined" && require !== null) {
      request = new (require('xmlhttprequest').XMLHttpRequest);
    }
    return request;
  };

  module.exports = last;

  module.exports = average;

  module.exports = convert;

}).call(this);
