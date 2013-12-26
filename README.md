# Mercado Bitcoin API [![NPM version](https://badge.fury.io/js/mercado-bitcoin.png)](http://badge.fury.io/js/mercado-bitcoin)

#### A simple wrapper to use the Mercado Bitcoin API in NodeJS.

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
var btcAmount, mercadoBitcoin, method;

mercadoBitcoin = require('../lib/mercado-bitcoin');

btcAmount = 0.1;
method = 'convert_BTC_ARS_Last'

mercadoBitcoin.convert('convert_BTC_ARS_Last', '1', function (err, response) {
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
(http://www.mercado-bitcoin.com.ar/documentation)

