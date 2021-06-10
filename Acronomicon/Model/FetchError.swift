//  FetchError.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 09/06/21.
//  
//

import Foundation

enum FetchError: Error {
    case networking(String)
    case notFound(String)
    case decoding(String)
}
