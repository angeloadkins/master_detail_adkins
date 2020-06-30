//
//  MusicAlbums.swift
//  adkinsMusic
//
//  Created by Angelo Adkins on 6/8/20.
//  Copyright © 2020 Angelo Adkins. All rights reserved.
//

import UIKit

struct MusicAlbums {
    
    
    static let cellIdentifier = "ReusableCell"
    
    var albumTitle: String?
    var artist: String?
    var year: String?
    var label: String?
    var albumCover: UIImage?
    var tracks: [Tracks]?
    
    init(albumTitle: String, artist: String, year: String, label: String, albumCover: UIImage, tracks: [Tracks]){
        
        self.albumTitle = albumTitle
        self.artist = artist
        self.year = year
        self.label = label
        self.albumCover = albumCover
        self.tracks = tracks
    }
}
