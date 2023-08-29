//
//  Track.swift
//  TestProject
//
//  Created by Іван Штурхаль on 20.07.2023.
//

import Foundation

struct Track {
    let artist: String
    let song: String
    
    
    
    var track: String {
        "\(artist) - \(song)"
    }
}

extension Track {
    static func getTrackList() -> [Track] {
        return [
            Track(artist: "Lana Del Rey", song: "Cola"),
            Track(artist: "Lady Gaga", song: "Love game"),
            Track(artist: "Madonna", song: "I don't give A"),
            Track(artist: "Britney Spears", song: "Lucky"),
            Track(artist: "Shakira", song: "She wolf"),
            Track(artist: "Taylor Swift", song: "Blank Space"),
            Track(artist: "Doja Cat", song: "Woman"),
            Track(artist: "Tove Lo", song: "Borderline"),
            Track(artist: "Madonna, Justin Timberlake", song: "4 minutes"),
            Track(artist: "Charlie Puth", song: "Loser"),
            Track(artist: "Cher", song: "Strong")
        ]
    }
}
