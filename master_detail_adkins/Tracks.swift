//
//  Tracks.swift
//  adkinsMusic
//
//  Created by Angelo Adkins on 6/9/20.
//  Copyright © 2020 Angelo Adkins. All rights reserved.
//

import Foundation

struct Tracks {
    
    var song: String?
    var length: String?
    var composer: String?
    var trackNumber: Int?
    
    init(trackNumber: Int, song: String, length: String, composer: String ) {
        self.song = song
        self.length = length
        self.composer = composer
        self.trackNumber = trackNumber
    }
}


