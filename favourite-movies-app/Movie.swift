//
//  Movie.swift
//  favourite-movies-app
//
//  Created by Roger Tinsley on 14/09/2017.
//  Copyright © 2017 rt. All rights reserved.
//

import Foundation

class Movie {
    
    var id       : String = ""
    var title    : String = ""
    var year     : String = ""
    var imageUrl : String = ""
    var overview : String = ""
    var url      : URL!

    init(id: String, title: String, year: String, imageUrl: String, overview: String) {
        self.id       = id
        self.title    = title
        self.year     = year
        self.imageUrl = imageUrl
        self.overview = overview
        self.url      = URL(string: "https://www.themoviedb.org/movie/\(id)")
    }
    
}
