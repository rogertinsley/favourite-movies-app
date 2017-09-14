//
//  Movie.swift
//  favourite-movies-app
//
//  Created by Roger Tinsley on 14/09/2017.
//  Copyright © 2017 rt. All rights reserved.
//

import Foundation

class Movie {
    
    var id      : String = ""
    var title   : String = ""
    var year    : String = ""
    var imageUrl: String = ""
    var plot    : String = ""

    init(id: String, title: String, year: String, imageUrl: String, plot: String = "") {
        self.id       = id
        self.title    = title
        self.year     = year
        self.imageUrl = imageUrl
        self.plot     = plot
    }
    
}
