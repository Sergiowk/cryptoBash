#!/bin/bash

while true; do
  resize -C  # resize the terminal to fit the output
  clear
  # Get BTC/USD price from Coinbase API
  btc_price=$(curl -s https://api.coinbase.com/v2/prices/BTC-USD/spot | grep -o '"amount":"[0-9]*\.[0-9]*"' | cut -d: -f2)

  # Get CAKE/USDT price from Binance API
  cake_price=$(curl -s https://api.binance.com/api/v3/ticker/price?symbol=CAKEUSDT | grep -o '"price":"[0-9]*\.[0-9]*"' | cut -d: -f2)

  # Get BNB/USDT price from Binance API
  bnb_price=$(curl -s https://api.binance.com/api/v3/ticker/price?symbol=BNBUSDT | grep -o '"price":"[0-9]*\.[0-9]*"' | cut -d: -f2)

  # Get XLM/USDT price from Binance API
  xlm_price=$(curl -s https://api.binance.com/api/v3/ticker/price?symbol=XLMUSDT | grep -o '"price":"[0-9]*\.[0-9]*"' | cut -d: -f2)

  # Get ETH/USDT price from Binance API
  eth_price=$(curl -s https://api.binance.com/api/v3/ticker/price?symbol=ETHUSDT | grep -o '"price":"[0-9]*\.[0-9]*"' | cut -d: -f2)

  # Get ADA/USDT price from Binance API
  ada_price=$(curl -s https://api.binance.com/api/v3/ticker/price?symbol=ADAUSDT | grep -o '"price":"[0-9]*\.[0-9]*"' | cut -d: -f2)

  # Print the prices
  echo "BTC/USD: $btc_price | CAKE/USDT: $cake_price | BNB/USDT: $bnb_price"
  echo "ADA/USDT: $ada_price| XLM/USDT: $xlm_price | ETH/USDT: $eth_price" 
  
  # Wait for 5 seconds before updating the prices
  sleep 5
done
