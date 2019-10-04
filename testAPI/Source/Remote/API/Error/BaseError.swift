//
//  BaseError.swift
//  testAPI
//
//  Created by Bùi Xuân Huy on 10/3/19.
//  Copyright © 2019 huy. All rights reserved.
//

import ObjectMapper

class ErrorReponse: Mappable {
    var message: String?
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        message <- map["message"]
    }
}

enum BaseError: Error {
    
    case networkError
    case httpError(httpCode: Int)
    case unexpectedError
    case apiFailue(error: ErrorReponse)
    
    public var errorMassage: String? {
        switch self {
        case .networkError:
            return "NetworkError"
        case .httpError(let code):
            return getHttpErrorMessage(httpCode: code)
        case .apiFailue(let error):
            return error.message
        default:
            return "Unexpected Error"
        }
    }
    
    private func getHttpErrorMessage(httpCode: Int) -> String {
        if (httpCode >= 300 && httpCode <= 308) {
            // Redirection
            return "It was transferred to a different URL. I'm sorry for causing you trouble";
        }
        if (httpCode >= 400 && httpCode <= 451) {
            // Client error
            return "An error occurred on the application side. Please try again later!";
        }
        if (httpCode >= 500 && httpCode <= 511) {
            // Server error
            return "A server error occurred. Please try again later!";
        }
        // Unofficial error
        return "An error occurred. Please try again later!";
    }
}

