mercadoBitcoin = require '../lib/mercado-bitcoin'

# Testing last
mercadoBitcoin.last 'lastquote', 'bitstampUSD', (err, response) ->
  console.log response

mercadoBitcoin.last 'lastquoteaverage', 'bitstampUSD', (err, response) ->
  console.log response


# Testing average
mercadoBitcoin.average 'dollarBlueMarketAveragePrice', (err, response) ->
  console.log response


# Testing convert
mercadoBitcoin.convert 'convert_BTC_ARS_Last', '1', (err, response) ->
  console.log response
