//
//  HttpHandler.swift
//  favourite-movies-app
//
//  Created by Roger Tinsley on 14/09/2017.
//  Copyright © 2017 rt. All rights reserved.
//

import Foundation

class HTTPHandler {
    
    static func getJson(urlString: String, completionHandler: @escaping (Data?) -> (Void)) {
        
        let urlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let url       = URL(string: urlString!)
        let session   = URLSession.shared
        
        print("URL being used is \(url!)")
    
        let task = session.dataTask(with: url!) { data, response, error in
            if let data = data {
                let httpResponse = response as! HTTPURLResponse
                let statusCode = httpResponse.statusCode
                print("request completed with code: \(statusCode)")
                if (statusCode == 200) {
                    completionHandler(data as Data)
                }
            } else if let error = error {
                print(error.localizedDescription)
                completionHandler(nil)
            }
        }
        
        task.resume()
    }
    
}
