//
//  Note.swift
//  animated
//
//  Created by Rogelio on 03/12/22.
//

import SwiftUI

struct Note: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var caption: String
    var color: Color
    var image: Image
}

var notes = [
    Note(title: "14 Essentials animations on SwiftUI", subtitle: "Build and animate an iOS app from scratch", caption: "Developing a good workflow", color: Color(hex: "7850F0"), image: Image("Topic 1")),
    Note(title: "Build a Bottom navigation bar", subtitle: "Apply your Swift and SwiftUI knowledge by building real, quick and various applications from scratch", caption: "I wanted a curve animation", color: Color(hex: "6792FF"), image: Image("Topic 2")),
    Note(title: "Anti-patterns of error handling in SwiftUI", subtitle: "This article will show common pitfalls you can make when handling exceptions and how to do it right", caption: "Article will help to avoid several popular...", color: Color(hex: "005FE7"), image: Image("Topic 1"))
]
