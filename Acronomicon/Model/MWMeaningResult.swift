//  MWMeaningResult.swift
//  Acronomicon
//
//  Created by Victor Argüelles on 09/06/21.
//  
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let mWMeaningResult = try? newJSONDecoder().decode(MWMeaningResult.self, from: jsonData)

import Foundation

extension MeaningResults {
    init(fromMWResults results: [MWMeaningResult]) {
        let items = results.compactMap({
            MeaningResult(fromMWResult: $0)
        })
        
        self.init(items: items)
    }
}

extension MeaningResult {
    init?(fromMWResult result: MWMeaningResult) {
        if let term = result.headwordInfo?.headword {
            let id: UUID = {
                if let str = result.meta?.uuid,
                   let uuid = UUID(uuidString: str) {
                    return uuid
                } else {
                    return UUID()
                }
            }()
            
            let meaning: String = {
                if let str = result.shortDef?.first {
                    return str
                }
                
                else if let sense = result.definitions?.first?.senses?.first?.first {
                    switch sense {
                        case .senseClass(let value):
                            return value.definitions?.first?[1] ?? "No meaning found"
                        default:
                            break
                    }
                }
                
                return "No meaning found"
            }()
            
            let etymology = result.etymology?.first?[1] ?? ""
            
            self.init(id: id, term: term, meaning: meaning, comment: etymology, source: "Merriam-Webster")
            return
        }
        
        return nil
    }
}

struct MWMeaningResult: Codable {
    let meta: Meta?
    let headwordInfo: HeadwordInfo?
    let definitions: [Definition]?
    let etymology: [[String]]?
    let shortDef: [String]?
    
    enum CodingKeys: String, CodingKey {
        case meta
        case headwordInfo = "hwi"
        case definitions = "def"
        case etymology = "et"
        case shortDef = "shortdef"
    }
    
    struct Meta: Codable {
        let id: String
        let uuid: String
        
        enum CodingKeys: String, CodingKey {
            case id, uuid
        }
    }
    
    struct HeadwordInfo: Codable {
        let headword: String?
        enum CodingKeys: String, CodingKey {
            case headword = "hw"
        }
    }
    
    struct Definition: Codable {
        let senses: [[Sense]]?
        
        enum CodingKeys: String, CodingKey {
            case senses = "sseq"
        }
        
        enum Sense: Codable {
            case senseClass(SenseClass)
            case string(String)
            
            init(from decoder: Decoder) throws {
                var container = try decoder.unkeyedContainer()
                if let v = try? container.decode(SenseClass.self) {
                    self = .senseClass(v)
                    return
                }
                if let s = try? container.decode(String.self) {
                    self = .string(s)
                    return
                }
                throw DecodingError.typeMismatch(Sense.self,
                                                 .init(codingPath: decoder.codingPath,
                                                       debugDescription: "Wrong type for Sense: \(type(of: container))"))
            }
            
            func encode(to encoder: Encoder) throws {
                return
            }
            
            struct SenseClass: Codable {
                let definitions: [[String]]?
                
                enum CodingKeys: String, CodingKey {
                    case definitions = "dt"
                }
            }
        }
    }
    
    struct Etymology: Codable {
        let keyValuePair: EtymologyKeyValuePair?
        
        
        struct EtymologyKeyValuePair: Codable {
            let array: [String]?
        }
    }
}
