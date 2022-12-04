//
//  Note Sections.swift
//  animated
//
//  Created by Rogelio on 03/12/22.
//

import SwiftUI

struct NoteSection: Identifiable {
    var id = UUID()
    var title: String
    var caption: String
    var color: Color
    var image: Image
}

var noteSections = [
    NoteSection(title: "State Machine", caption: "Watch video - 15 mins", color: Color(hex: "9CC5FF"), image: Image("Topic 2")),
    NoteSection(title: "Animated Menu", caption: "Watch video - 10 mins", color: Color(hex: "6E6AE8"), image: Image("Topic 1")),
    NoteSection(title: "Tab Bar", caption: "Watch video - 8 mins", color: Color(hex: "005FE7"), image: Image("Topic 2")),
    NoteSection(title: "Button", caption: "Watch video - 9 mins", color: Color(hex: "BBA6FF"), image: Image("Topic 1"))
]
