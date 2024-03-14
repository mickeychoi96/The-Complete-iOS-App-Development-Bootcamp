//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdateCoin(coin: CoinModel)
}

struct CoinManager {
    
    var delegate: CoinManagerDelegate?
        
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "47053782-A08D-463A-8880-D8EABD15F158"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String) {
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!)
                }
                if let safeData = data {
                    if let coin = self.parseJSON(safeData) {
                        print(coin)
                        delegate?.didUpdateCoin(coin: coin)
                    }
                }
            }
            
            task.resume()
        }
    }
    
    //Decoding JSON
    func parseJSON(_ coinData: Data) -> CoinModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CoinData.self, from: coinData)
            let rate = decodedData.rate
            let currency = decodedData.asset_id_quote
            
            let coin = CoinModel(price: rate, currency: currency)
            return coin
        } catch {
            print(error)
            return nil
        }
    }
    
}
