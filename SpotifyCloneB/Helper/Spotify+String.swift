//
//  Spotify+String.swift
//  SpotifyCloneB
//

import Foundation

class HelperString {
    
    static let imageProfileLink = "https://w0.peakpx.com/wallpaper/715/233/HD-wallpaper-yato-noragami-anime.jpg"
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
    
    static func setFormatNumber(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        guard let formattedNumber = numberFormatter.string(from: NSNumber(value: number)) else { return "" }
        
        return formattedNumber
    }
    
}
