[![NPM version](https://badge.fury.io/js/mercado-bitcoin.png)](http://badge.fury.io/js/mercado-bitcoin)
[![Code Climate](https://codeclimate.com/github/colkito/mercado-bitcoin.png)](https://codeclimate.com/github/colkito/mercado-bitcoin)
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/colkito/mercado-bitcoin/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

# Mercado Bitcoin API

This is a simple implementation of the www.mercado-bitcoin.com.ar JSON API written for nodejs.


## Installation

Using [`npm`](http://npmjs.org/):

``` sh
$ npm [-g] install mercado-bitcoin
```

In [Node.js](http://nodejs.org/):

``` javascript
var mb = require("mercado-bitcoin");
```

## Synopsis

``` javascript
var amount, mercadoBitcoin, method;

mercadoBitcoin = require('../lib/mercado-bitcoin');

amount = 0.1;
method = 'convert_BTC_ARS_Last';

mercadoBitcoin.convert(method, amount, function (err, response) {
  console.log(response);
 });
```

## API

### mercadoBitcoin.last(method, symbol, callback(err[, response]))

Gets the latest price.

### mercadoBitcoin.average(method, callback(err[, response]))

Gets the latest average price.

### mercadoBitcoin.convert(method, amount, callback(err[, response]))
Gets the last convert between Bitcoins and Currency.

## More API info:
For all available methods please visit: http://www.mercado-bitcoin.com.ar/documentation
