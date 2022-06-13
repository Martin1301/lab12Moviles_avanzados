//
//  Request.swift
//  SpotifyCloneB
//


import Foundation

class Request {
    
    let token = "BQAGr0tYyjyTuVqFF_tXQNp1P8RCahmymmYMoQ42-len4siI3XXoir9lzrYsj3ebPEKxtgu-sF0Z91eXTUHxzfMNPSKtzlRMSfxCr5EC7cvxautr3nrIEM-8OPrfrlHNQzNTKjPTJf0moNJQ-ijt2O8Dsb8AQuY2q5SijtiphuCP09y303ykZSYAjBSQlKODkUrVMIJ3T9bkVXu6Oj0okXE"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            let urlParse = url.replacingOccurrences(of: " ", with: "%20")
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(urlParse)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
