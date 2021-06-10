//  json.swift
//  Test
//
//  Created by Victor Argüelles on 09/06/21.
//  
//

import Foundation

struct Mocks {
    static let json = jsonStr.data(using: .utf8)!
    static let json2 = jsonStr2.data(using: .utf8)!
    static let SFJson = SFJsonStr.data(using: .utf8)!
    static let SecondSFJson = SecondSFJsonStr.data(using: .utf8)!
    
    static let jsonStr = """
        [
        {
            "meta": {
                "id": "rest:1",
                "uuid": "be0a7911-c78a-47b3-b0a6-15294af42519",
                "sort": "182553000",
                "src": "collegiate",
                "section": "alpha",
                "stems": [
                    "at rest",
                    "for the rest",
                    "rest",
                    "rests"
                ],
                "offensive": false
            },
            "hom": 1,
            "hwi": {
                "hw": "rest",
                "prs": [
                    {
                        "mw": "ˈrest",
                        "sound": {
                            "audio": "rest0001",
                            "ref": "c",
                            "stat": "1"
                        }
                    }
                ]
            },
            "fl": "noun",
            "def": [
                {
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "sn": "1",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}{sx|repose||}, {sx|sleep||}"
                                        ]
                                    ],
                                    "sdsense": {
                                        "sd": "specifically",
                                        "dt": [
                                            [
                                                "text",
                                                "{bc}a bodily state characterized by minimal functional and metabolic activities"
                                            ]
                                        ]
                                    }
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "2 a",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}freedom from activity or labor"
                                        ]
                                    ]
                                }
                            ],
                            [
                                "sense",
                                {
                                    "sn": "b",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}a state of motionlessness or inactivity"
                                        ]
                                    ]
                                }
                            ],
                            [
                                "sense",
                                {
                                    "sn": "c",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}the repose of death"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "3",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}a place for {a_link|resting} or lodging"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "4",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}peace of mind or spirit"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "pseq",
                                [
                                    [
                                        "sense",
                                        {
                                            "sn": "5 a (1)",
                                            "dt": [
                                                [
                                                    "text",
                                                    "{bc}a rhythmic silence in music"
                                                ]
                                            ]
                                        }
                                    ],
                                    [
                                        "sense",
                                        {
                                            "sn": "(2)",
                                            "dt": [
                                                [
                                                    "text",
                                                    "{bc}a character representing such a silence"
                                                ]
                                            ]
                                        }
                                    ]
                                ]
                            ],
                            [
                                "sense",
                                {
                                    "sn": "b",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}a brief pause in reading"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "6",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}something used for support"
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                }
            ],
            "dros": [
                {
                    "drp": "at rest",
                    "def": [
                        {
                            "sseq": [
                                [
                                    [
                                        "sense",
                                        {
                                            "sn": "1",
                                            "dt": [
                                                [
                                                    "text",
                                                    "{bc}resting or reposing especially in sleep or death"
                                                ]
                                            ]
                                        }
                                    ]
                                ],
                                [
                                    [
                                        "sense",
                                        {
                                            "sn": "2",
                                            "dt": [
                                                [
                                                    "text",
                                                    "{bc}{sx|quiescent||}, {sx|motionless||}"
                                                ]
                                            ]
                                        }
                                    ]
                                ],
                                [
                                    [
                                        "sense",
                                        {
                                            "sn": "3",
                                            "dt": [
                                                [
                                                    "text",
                                                    "{bc}free of anxieties"
                                                ]
                                            ]
                                        }
                                    ]
                                ]
                            ]
                        }
                    ]
                }
            ],
            "art": {
                "artid": "rest",
                "capt": "rest 5a(2): {it}1{/it} whole, {it}2{/it} half, {it}3{/it} quarter, {it}4{/it} eighth, {it}5{/it} sixteenth"
            },
            "et": [
                [
                    "text",
                    "Middle English, from Old English; akin to Old High German {it}rasta{/it} rest and perhaps to Old High German {it}ruowa{/it} calm"
                ]
            ],
            "date": "before 12th century{ds||1||}",
            "shortdef": [
                "repose, sleep; specifically : a bodily state characterized by minimal functional and metabolic activities",
                "freedom from activity or labor",
                "a state of motionlessness or inactivity"
            ]
        },
        {
            "meta": {
                "id": "rest:2",
                "uuid": "03fe71b0-e417-4917-9604-c64ff567a7bd",
                "sort": "182554000",
                "src": "collegiate",
                "section": "alpha",
                "stems": [
                    "rest",
                    "rested",
                    "rester",
                    "resters",
                    "resting",
                    "rests"
                ],
                "offensive": false
            },
            "hom": 2,
            "hwi": {
                "hw": "rest"
            },
            "fl": "verb",
            "ins": [
                {
                    "if": "rest*ed"
                },
                {
                    "if": "rest*ing"
                },
                {
                    "if": "rests"
                }
            ],
            "def": [
                {
                    "vd": "intransitive verb",
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "sn": "1 a",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to get rest by lying down"
                                        ]
                                    ],
                                    "sdsense": {
                                        "sd": "especially",
                                        "dt": [
                                            [
                                                "text",
                                                "{bc}{sx|sleep||}"
                                            ]
                                        ]
                                    }
                                }
                            ],
                            [
                                "sense",
                                {
                                    "sn": "b",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to lie dead"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "2",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to cease from action or motion {bc}refrain from labor or exertion"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "3",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to be free from anxiety or disturbance"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "4",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to sit or lie fixed or supported "
                                        ],
                                        [
                                            "vis",
                                            [
                                                {
                                                    "t": "a column {wi}rests{/wi} on its pedestal"
                                                }
                                            ]
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "5 a",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to remain confident {bc}{sx|trust||} "
                                        ],
                                        [
                                            "vis",
                                            [
                                                {
                                                    "t": "cannot {wi}rest{/wi} on that assumption"
                                                }
                                            ]
                                        ]
                                    ]
                                }
                            ],
                            [
                                "sense",
                                {
                                    "sn": "b",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to be based or founded "
                                        ],
                                        [
                                            "vis",
                                            [
                                                {
                                                    "t": "the verdict {wi}rested{/wi} on several sound precedents"
                                                }
                                            ]
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "6",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to remain for action or accomplishment "
                                        ],
                                        [
                                            "vis",
                                            [
                                                {
                                                    "t": "the answer {wi}rests{/wi} with you"
                                                }
                                            ]
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "7",
                                    "sls": [
                                        "of farmland"
                                    ],
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to remain idle or uncropped"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "8",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to bring to an end voluntarily the introduction of evidence in a law case"
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                },
                {
                    "vd": "transitive verb",
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "sn": "1",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to give rest to"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "2",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to set at rest"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "3",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to place on or against a support"
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "4",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to cause to be firmly fixed "
                                        ],
                                        [
                                            "vis",
                                            [
                                                {
                                                    "t": "{wi}rested{/wi} all hope in his child"
                                                }
                                            ]
                                        ]
                                    ]
                                }
                            ]
                        ],
                        [
                            [
                                "sense",
                                {
                                    "sn": "5",
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to desist voluntarily from presenting evidence pertinent to (a case at law)"
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                }
            ],
            "uros": [
                {
                    "ure": "rest*er",
                    "fl": "noun"
                }
            ],
            "date": "before 12th century{ds|i|1|a|}",
            "shortdef": [
                "to get rest by lying down; especially : sleep",
                "to lie dead",
                "to cease from action or motion : refrain from labor or exertion"
            ]
        },
        {
            "meta": {
                "id": "rest:3",
                "uuid": "cbe6f1e9-ace1-4b59-9c9b-303e3d5fd1bb",
                "sort": "182555000",
                "src": "collegiate",
                "section": "alpha",
                "stems": [
                    "at rest",
                    "for the rest",
                    "rest",
                    "rests"
                ],
                "offensive": false
            },
            "hom": 3,
            "hwi": {
                "hw": "rest"
            },
            "fl": "noun",
            "def": [
                {
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}a projection or attachment on the side of the breastplate of medieval armor for supporting the butt of a lance"
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                }
            ],
            "et": [
                [
                    "text",
                    "Middle English {it}reste{/it}, literally, stoppage, short for {it}areste{/it}, from Anglo-French {it}arest{/it}, from {it}arester{/it} to arrest"
                ]
            ],
            "date": "14th century",
            "shortdef": [
                "a projection or attachment on the side of the breastplate of medieval armor for supporting the butt of a lance"
            ]
        },
        {
            "meta": {
                "id": "rest:4",
                "uuid": "f8f858be-efb3-427d-89ae-f8d61bf6091b",
                "sort": "182556000",
                "src": "collegiate",
                "section": "alpha",
                "stems": [
                    "at rest",
                    "for the rest",
                    "rest",
                    "rests"
                ],
                "offensive": false
            },
            "hom": 4,
            "hwi": {
                "hw": "rest"
            },
            "fl": "noun",
            "def": [
                {
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}something that remains over {bc}{sx|remainder||} "
                                        ],
                                        [
                                            "vis",
                                            [
                                                {
                                                    "t": "ate the {wi}rest{/wi} of the candy"
                                                }
                                            ]
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                }
            ],
            "dros": [
                {
                    "drp": "for the rest",
                    "def": [
                        {
                            "sseq": [
                                [
                                    [
                                        "sense",
                                        {
                                            "dt": [
                                                [
                                                    "text",
                                                    "{bc}with regard to remaining issues or needs"
                                                ]
                                            ]
                                        }
                                    ]
                                ]
                            ]
                        }
                    ]
                }
            ],
            "et": [
                [
                    "text",
                    "Middle English, from Anglo-French {it}reste{/it}, from {it}rester{/it} to remain, from Latin {it}restare{/it}, from {it}re-{/it} + {it}stare{/it} to stand {ma}{mat|stand|}{/ma}"
                ]
            ],
            "date": "15th century",
            "shortdef": [
                "something that remains over : remainder"
            ]
        },
        {
            "meta": {
                "id": "rest area",
                "uuid": "ce5f0794-b40a-4638-b6a0-62afbca14e46",
                "sort": "182561000",
                "src": "collegiate",
                "section": "alpha",
                "stems": [
                    "rest area"
                ],
                "offensive": false
            },
            "hwi": {
                "hw": "rest area"
            },
            "fl": "noun",
            "def": [
                {
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}an area adjacent to a highway at which restrooms and refreshments are usually available"
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                }
            ],
            "date": "1971",
            "shortdef": [
                "an area adjacent to a highway at which restrooms and refreshments are usually available"
            ]
        },
        {
            "meta": {
                "id": "rest home",
                "uuid": "303f1164-9538-47d6-9313-f03c4e489bfd",
                "sort": "182570000",
                "src": "collegiate",
                "section": "alpha",
                "stems": [
                    "rest home",
                    "rest homes"
                ],
                "offensive": false
            },
            "hwi": {
                "hw": "rest home"
            },
            "fl": "noun",
            "def": [
                {
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}an establishment that provides housing and general care for the aged or the convalescent"
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                }
            ],
            "date": "1925",
            "shortdef": [
                "an establishment that provides housing and general care for the aged or the convalescent"
            ]
        },
        {
            "meta": {
                "id": "rest house",
                "uuid": "228ae9bf-cc06-4447-b92b-1080d836772b",
                "sort": "182571000",
                "src": "collegiate",
                "section": "alpha",
                "stems": [
                    "rest house",
                    "rest houses"
                ],
                "offensive": false
            },
            "hwi": {
                "hw": "rest house"
            },
            "fl": "noun",
            "def": [
                {
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}a building used for shelter by travelers"
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                }
            ],
            "date": "1807",
            "shortdef": [
                "a building used for shelter by travelers"
            ]
        },
        {
            "meta": {
                "id": "rest mass",
                "uuid": "89c37ec2-0089-4634-8b43-5be5ff70d25a",
                "sort": "182579000",
                "src": "collegiate",
                "section": "alpha",
                "stems": [
                    "rest mass",
                    "rest masses"
                ],
                "offensive": false
            },
            "hwi": {
                "hw": "rest mass"
            },
            "fl": "noun",
            "def": [
                {
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}the mass of a body exclusive of additional mass the body acquires by its motion according to the theory of relativity"
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                }
            ],
            "date": "1914",
            "shortdef": [
                "the mass of a body exclusive of additional mass the body acquires by its motion according to the theory of relativity"
            ]
        },
        {
            "meta": {
                "id": "rest easy",
                "uuid": "7712b5a2-ac03-4091-8895-f5ea11626ab8",
                "sort": "3016114000",
                "src": "ld",
                "section": "idioms",
                "stems": [
                    "rest easy"
                ],
                "offensive": false
            },
            "hwi": {
                "hw": "rest easy"
            },
            "fl": "idiom",
            "def": [
                {
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "dt": [
                                        [
                                            "text",
                                            "{bc}to stop worrying about something {bc}to not worry about something "
                                        ],
                                        [
                                            "vis",
                                            [
                                                {
                                                    "t": "I can {it}rest easy{/it} knowing that he will be in charge."
                                                }
                                            ]
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                }
            ],
            "shortdef": [
                "to stop worrying about something : to not worry about something"
            ]
        },
        {
            "meta": {
                "id": "rest in peace",
                "uuid": "68f5c37a-39af-4a32-8004-b3725defe971",
                "sort": "3016117000",
                "src": "ld",
                "section": "idioms",
                "stems": [
                    "rest in peace"
                ],
                "offensive": false
            },
            "hwi": {
                "hw": "rest in peace"
            },
            "fl": "idiom",
            "def": [
                {
                    "sseq": [
                        [
                            [
                                "sense",
                                {
                                    "dt": [
                                        [
                                            "uns",
                                            [
                                                [
                                                    [
                                                        "text",
                                                        "used to say one hopes a person who has died will have peace in death "
                                                    ],
                                                    [
                                                        "vis",
                                                        [
                                                            {
                                                                "t": "May she {it}rest in peace{/it}."
                                                            }
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        ]
                                    ]
                                }
                            ]
                        ]
                    ]
                }
            ],
            "shortdef": [
                "—used to say one hopes a person who has died will have peace in death"
            ]
        }
        ]
        """
    
    static let jsonStr2 = """
        [{\"meta\":{\"id\":\"NASA\",\"uuid\":\"850d4a07-49bc-4e8f-b8a9-833ef5e31420\",\"sort\":\"140170000\",\"src\":\"collegiate\",\"section\":\"alpha\",\"stems\":[\"NASA\"],\"offensive\":false},\"hwi\":{\"hw\":\"NASA\",\"prs\":[{\"mw\":\"\\u02c8na-s\\u0259\",\"sound\":{\"audio\":\"nasa001ld\",\"ref\":\"ld\",\"stat\":\"1\"}}]},\"fl\":\"abbreviation\",\"def\":[{\"sseq\":[[[\"sense\",{\"dt\":[[\"text\",\"National Aeronautics and Space Administration\"]]}]]]}],\"shortdef\":[\"National Aeronautics and Space Administration\"]}]
        """
    
    
    static let SecondSFJsonStr = """
        {
        "result": [
        {
            "id": "12345",
            "term": "TEST",
            "definition": "Testing Every Single Thing",
            "category": "Tests",
            "categoryname": "Test",
            "parentcategory": "UNITTESTS",
            "parentcategoryname": "Unit Tests",
            "score": "4.2"
        },
        {
            "id": "678910",
            "term": "ESSAIE",
            "definition": "Essaies",
            "category": "ESSAIE",
            "categoryname": "Essaie",
            "parentcategory": {},
            "parentcategoryname": {},
            "score": "0.00"
        }
        ]
        }
        """
    
    static let SFJsonStr = """
        {
        "result": [
        {
            "id": "51362",
            "term": "NASA",
            "definition": "National Aeronautics and Space Administration",
            "category": "NASA",
            "categoryname": "NASA",
            "parentcategory": "GOVERNMENTAL",
            "parentcategoryname": "Governmental",
            "score": "4.69"
        },
        {
            "id": "48293",
            "term": "NASA",
            "definition": "National Aeronautics and Space Administration",
            "category": "METEOROLOGY",
            "categoryname": "Meteorology",
            "parentcategory": "SCIENCE",
            "parentcategoryname": "Academic & Science",
            "score": "4.14"
        },
        {
            "id": "266042",
            "term": "NASA",
            "definition": "Natural Athlete Strength Association",
            "category": "SPORTS",
            "categoryname": "Sports",
            "parentcategory": {},
            "parentcategoryname": {},
            "score": "3.10"
        },
        {
            "id": "61104",
            "term": "NASA",
            "definition": "Never A Straight Answer",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "3.40"
        },
        {
            "id": "373000",
            "term": "NASA",
            "definition": "Need Another Seven Astronauts",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "2.13"
        },
        {
            "id": "31533",
            "term": "NASA",
            "definition": "National Aeronautics and Space Administration",
            "category": "USGOV",
            "categoryname": "US Government",
            "parentcategory": "GOVERNMENTAL",
            "parentcategoryname": "Governmental",
            "score": "3.99"
        },
        {
            "id": "61100",
            "term": "NASA",
            "definition": "Not All Shuttles Arrive",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "2.91"
        },
        {
            "id": "138573",
            "term": "NASA",
            "definition": "Northmemorial Amateur Sports Association",
            "category": "SPORTS",
            "categoryname": "Sports",
            "parentcategory": {},
            "parentcategoryname": {},
            "score": "3.08"
        },
        {
            "id": "373004",
            "term": "NASA",
            "definition": "North American Search Authority",
            "category": "LAW",
            "categoryname": "Law & Legal",
            "parentcategory": "GOVERNMENTAL",
            "parentcategoryname": "Governmental",
            "score": "2.54"
        },
        {
            "id": "233681",
            "term": "NASA",
            "definition": "No Access to Space for Americans",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "3.76"
        },
        {
            "id": "295554",
            "term": "NASA",
            "definition": "National Assistance Services Australia",
            "category": "FIRMS",
            "categoryname": "Companies & Firms",
            "parentcategory": "BUSINESS",
            "parentcategoryname": "Business",
            "score": "2.50"
        },
        {
            "id": "361695",
            "term": "NASA",
            "definition": "Nerds Are Searching for Answers",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "3.05"
        },
        {
            "id": "240773",
            "term": "NASA",
            "definition": "Never Admit Seeing Anything",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "3.68"
        },
        {
            "id": "61108",
            "term": "NASA",
            "definition": "National Association of Signing Agents",
            "category": "ORGANIZATIONS",
            "categoryname": "Professional Organizations",
            "parentcategory": "BUSINESS",
            "parentcategoryname": "Business",
            "score": "2.33"
        },
        {
            "id": "61112",
            "term": "NASA",
            "definition": "Negotiating Agents Steering API",
            "category": "NETWORKING",
            "categoryname": "Networking",
            "parentcategory": "COMPUTING",
            "parentcategoryname": "Computing",
            "score": "2.17"
        },
        {
            "id": "268357",
            "term": "NASA",
            "definition": "National Aggregate Stone Association",
            "category": "NONPROFIT",
            "categoryname": "Non-Profit Organizations",
            "parentcategory": "COMMUNITY",
            "parentcategoryname": "Community",
            "score": "1.86"
        },
        {
            "id": "302319",
            "term": "NASA",
            "definition": "National Association of Space Astronauts",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "2.81"
        },
        {
            "id": "265345",
            "term": "NASA",
            "definition": "Never Absolutely Sure of Anything",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "3.42"
        },
        {
            "id": "171828",
            "term": "NASA",
            "definition": "National Acronym Slinging Agency",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "3.00"
        },
        {
            "id": "156262",
            "term": "NASA",
            "definition": "Not A Shuttle Anymore",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "2.20"
        },
        {
            "id": "184977",
            "term": "NASA",
            "definition": "National Army Sporting Association",
            "category": "ORGANIZATIONS",
            "categoryname": "Professional Organizations",
            "parentcategory": "BUSINESS",
            "parentcategoryname": "Business",
            "score": "1.63"
        },
        {
            "id": "241792",
            "term": "NASA",
            "definition": "New Airwalk Shoes Accepted",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "1.74"
        },
        {
            "id": "191948",
            "term": "NASA",
            "definition": "New Age Space Association",
            "category": "ORGANIZATIONS",
            "categoryname": "Professional Organizations",
            "parentcategory": "BUSINESS",
            "parentcategoryname": "Business",
            "score": "2.20"
        },
        {
            "id": "1894656",
            "term": "NASA",
            "definition": "North American Saxophone Alliance",
            "category": "PERFART",
            "categoryname": "Performing Arts",
            "parentcategory": "COMMUNITY",
            "parentcategoryname": "Community",
            "score": "5.00"
        },
        {
            "id": "2249896",
            "term": "NASA",
            "definition": "Narcissistic A**hole Science Association",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "0.00"
        },
        {
            "id": "2009187",
            "term": "NASA",
            "definition": "No Aliens Seen Anywhere",
            "category": "UNFILED",
            "categoryname": "Unclassified",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "5.00"
        },
        {
            "id": "1422971",
            "term": "NASA",
            "definition": "National Air and Space Administration",
            "category": "NASA",
            "categoryname": "NASA",
            "parentcategory": "GOVERNMENTAL",
            "parentcategoryname": "Governmental",
            "score": "0.00"
        },
        {
            "id": "371597",
            "term": "NASA",
            "definition": "Noodle Arrangement Society of America",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "5.00"
        },
        {
            "id": "2363681",
            "term": "NASA",
            "definition": "Nacional Automotriz Sa",
            "category": "AUTOMOTIVE",
            "categoryname": "Automotive",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "0.00"
        },
        {
            "id": "1435510",
            "term": "NASA",
            "definition": "North Atlantic Space Administration",
            "category": "SCIENCE",
            "categoryname": "Academic & Science",
            "parentcategory": {},
            "parentcategoryname": {},
            "score": "4.50"
        },
        {
            "id": "2269671",
            "term": "NASA",
            "definition": "National Aeronautics and Space Administration",
            "category": "INTERNATIONAL",
            "categoryname": "International",
            "parentcategory": {},
            "parentcategoryname": {},
            "score": "0.00"
        },
        {
            "id": "2162297",
            "term": "NASA",
            "definition": "National Air and Space Association",
            "category": "ASSOCIATIONS",
            "categoryname": "Associations",
            "parentcategory": "COMMUNITY",
            "parentcategoryname": "Community",
            "score": "1.00"
        },
        {
            "id": "523065",
            "term": "NASA",
            "definition": "Nosey Alien Seekers Association",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "3.60"
        },
        {
            "id": "1442181",
            "term": "NASA",
            "definition": "National Aeronautics and Space Administration",
            "category": "FBI",
            "categoryname": "FBI Files",
            "parentcategory": "GOVERNMENTAL",
            "parentcategoryname": "Governmental",
            "score": "4.59"
        },
        {
            "id": "1874828",
            "term": "NASA",
            "definition": "Nerds And Scrubs Association",
            "category": "ASTRO",
            "categoryname": "Astronomy",
            "parentcategory": "SCIENCE",
            "parentcategoryname": "Academic & Science",
            "score": "1.00"
        },
        {
            "id": "155412",
            "term": "NASA",
            "definition": "Nautical Acrobatic Stunts Association",
            "category": "SPORTS",
            "categoryname": "Sports",
            "parentcategory": {},
            "parentcategoryname": {},
            "score": "1.00"
        },
        {
            "id": "1491316",
            "term": "NASA",
            "definition": "National Annoying Sister Association",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "3.64"
        },
        {
            "id": "2363678",
            "term": "NASA",
            "definition": "National Auto Sport Association",
            "category": "AUTOMOTIVE",
            "categoryname": "Automotive",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "0.00"
        },
        {
            "id": "1422681",
            "term": "NASA",
            "definition": "National Auto Sport Association",
            "category": "SPORTS",
            "categoryname": "Sports",
            "parentcategory": {},
            "parentcategoryname": {},
            "score": "5.00"
        },
        {
            "id": "1465412",
            "term": "NASA",
            "definition": "National Auto Sport Association",
            "category": "ORGANIZATIONS",
            "categoryname": "Professional Organizations",
            "parentcategory": "BUSINESS",
            "parentcategoryname": "Business",
            "score": "2.50"
        },
        {
            "id": "1777047",
            "term": "NASA",
            "definition": "National Anal Sex Association",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "4.43"
        },
        {
            "id": "1863727",
            "term": "NASA",
            "definition": "Nerds Arranging Space Adventures",
            "category": "UNFILED",
            "categoryname": "Unclassified",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "2.50"
        },
        {
            "id": "2363680",
            "term": "NASA",
            "definition": "National Autograss Sports Association",
            "category": "AUTOMOTIVE",
            "categoryname": "Automotive",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "0.00"
        },
        {
            "id": "1443127",
            "term": "NASA",
            "definition": "Nice and safe attitude",
            "category": "POKER",
            "categoryname": "Poker",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "3.00"
        },
        {
            "id": "2291704",
            "term": "NASA",
            "definition": "Not Another Spaceship Aahh",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "1.00"
        },
        {
            "id": "162150",
            "term": "NASA",
            "definition": "No Access to Space Allowed",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "1.80"
        },
        {
            "id": "1787872",
            "term": "NASA",
            "definition": "National Aeronautics and Space Administration",
            "category": "UNIVERSITIES",
            "categoryname": "Universities",
            "parentcategory": "SCIENCE",
            "parentcategoryname": "Academic & Science",
            "score": "1.00"
        },
        {
            "id": "1635827",
            "term": "NASA",
            "definition": "No Anti Sock Anvil",
            "category": "BUSINESS",
            "categoryname": "Business",
            "parentcategory": {},
            "parentcategoryname": {},
            "score": "3.00"
        },
        {
            "id": "1439178",
            "term": "NASA",
            "definition": "National Aeronautics and Space Administration",
            "category": "ASTRO",
            "categoryname": "Astronomy",
            "parentcategory": "SCIENCE",
            "parentcategoryname": "Academic & Science",
            "score": "5.00"
        },
        {
            "id": "2491984",
            "term": "NASA",
            "definition": "North American Sysop Alliance",
            "category": "IT",
            "categoryname": "IT",
            "parentcategory": "COMPUTING",
            "parentcategoryname": "Computing",
            "score": "0.00"
        },
        {
            "id": "1402711",
            "term": "NASA",
            "definition": "Never Any Satisfying Answers",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "5.00"
        },
        {
            "id": "574946",
            "term": "NASA",
            "definition": "National Aeronautics and Space Administration",
            "category": "FDA",
            "categoryname": "FDA",
            "parentcategory": "GOVERNMENTAL",
            "parentcategoryname": "Governmental",
            "score": "4.07"
        },
        {
            "id": "1957136",
            "term": "NASA",
            "definition": "National Airplane Space Airplane",
            "category": "ASTRO",
            "categoryname": "Astronomy",
            "parentcategory": "SCIENCE",
            "parentcategoryname": "Academic & Science",
            "score": "0.00"
        },
        {
            "id": "603061",
            "term": "NASA",
            "definition": "Nasstar",
            "category": "LSE",
            "categoryname": "London Stock Exchange",
            "parentcategory": "BUSINESS",
            "parentcategoryname": "Business",
            "score": "2.00"
        },
        {
            "id": "1531197",
            "term": "NASA",
            "definition": "Negative Attitudes Scuttle Astronautics",
            "category": "FUNNIES",
            "categoryname": "Funnies",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "1.00"
        },
        {
            "id": "1394138",
            "term": "NASA",
            "definition": "North American Special Agency",
            "category": "MISCELLANEOUS",
            "categoryname": "Miscellaneous",
            "parentcategory": {},
            "parentcategoryname": {},
            "score": "0.00"
        },
        {
            "id": "2363679",
            "term": "NASA",
            "definition": "Nepal Automobile Sport Association",
            "category": "AUTOMOTIVE",
            "categoryname": "Automotive",
            "parentcategory": "MISCELLANEOUS",
            "parentcategoryname": "Miscellaneous",
            "score": "0.00"
        },
        {
            "id": "1762879",
            "term": "NASA",
            "definition": "National School of Aesthetics",
            "category": "SPORTS",
            "categoryname": "Sports",
            "parentcategory": {},
            "parentcategoryname": {},
            "score": "0.00"
        }
        ]
        }
        """
}
