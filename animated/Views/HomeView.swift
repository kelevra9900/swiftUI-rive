//
//  HomeView.swift
//  animated
//
//  Created by Rogelio on 03/12/22.
//

import SwiftUI

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            
            ScrollView {
                content
            }
        }
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Blog")
                .customFont(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(notes) { note in
                        VCard(note: note)
                    }
                }
                .padding(20)
                .padding(.bottom, 10)
            }
            
            Text("Recent")
                .customFont(.title3)
                .padding(.horizontal, 20)
            
            VStack(spacing: 20) {
                ForEach(noteSections) { section in
                    HCard(section: section)
                }
            }
            .padding(20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
