//
//  GreetingsTip.swift
//  Greetings
//
//  Created by Kumar Swaraj on 12/10/26.
//

import Foundation
import TipKit

struct GreetingsTip: Tip {
    var title: Text {
        Text("Click on text and disc")
    }
    
    var message: Text? {
        Text("Text will be randomly generated and observe nice animations!")
    }
    
    var image: Image? {
        Image(systemName: "figure.walk.motion")
    }
}
