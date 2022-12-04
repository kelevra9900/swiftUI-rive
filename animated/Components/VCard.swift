//
//  VCard.swift
//  animated
//
//  Created by Rogelio on 03/12/22.
//

import SwiftUI

struct VCard: View {
    var note: Note
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(note.title)
                .customFont(.title2)
                .frame(maxWidth: 170, alignment: .leading)
                .layoutPriority(1)
            Text(note.subtitle)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(note.caption.uppercased())
                .customFont(.footnote2)
                .opacity(0.7)
            Spacer()
            HStack {
                ForEach(Array([4, 5, 6].shuffled().enumerated()), id: \.offset) { index, number in
                    Image("Avatar \(number)")
                        .resizable()
                        .mask(Circle())
                        .frame(width: 44, height: 44)
                        .offset(x: CGFloat(index * -20))
                }
            }
        }
        .foregroundColor(.white)
        .padding(30)
        .frame(width: 260, height: 310)
        .background(.linearGradient(colors: [note.color.opacity(1), note.color.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: note.color.opacity(0.3), radius: 8, x: 0, y: 12)
        .shadow(color: note.color.opacity(0.3), radius: 2, x: 0, y: 1)
        .overlay(
            note.image
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding(20)
        )
    }
}

struct VCard_Previews: PreviewProvider {
    static var previews: some View {
        VCard(note: notes[2])
    }
}
