//
//  Stories.swift
//  Irito
//
//  Created by Marfa Lamova on 3/20/21.
//  Copyright © 2021 Madina Saparbayeva. All rights reserved.
//

import Foundation
import SwiftUI

struct Stories : Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var subTitle: String
    var mainBody:String
    var user: String
    
    private var emojiName: String
    
    var emoji: Image {
        Image(emojiName)
    }
}
