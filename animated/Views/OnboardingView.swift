//
//  OnboardingView.swift
//  animated
//
//  Created by Rogelio on 30/11/22.
//

import SwiftUI
import RiveRuntime

struct OnboardingView: View {
    let button = RiveViewModel(fileName: "button")
    @State var showModal = false
    var body: some View {
        ZStack{
            // MARK: Background shapes
            background
            
            // MARK: Body
            content
                .offset(y: showModal ? -50 : 0)
            
            Color("Shadow").opacity(showModal ? 0.4 : 0).ignoresSafeArea()
            
            // MARK: Modal
            if showModal {
                SignInView(showModal: $showModal)
                    .transition(.move(edge: .top).combined(with: .opacity))
                    .overlay(
                        Button {
                            withAnimation(.spring()){
                                showModal = false
                            }
                        } label: {
                            Image(systemName: "xmark")
                                .frame(width: 36, height: 36)
                                .foregroundColor(.black)
                                .background(.white)
                                .mask(Circle())
                            .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
                        }
                            .frame(maxHeight: .infinity, alignment: .bottom)
                    )
                    .zIndex(1)
            }
        }
    }
    
    var content: some View {

        VStack(alignment: .leading, spacing: 16){
            // MARK: Title
            Text("A living network of curious minds")
                .font(.custom("Poppins Bold", size: 51, relativeTo: .largeTitle))
                .frame(width: 260, alignment: .leading)
            
            // MARK: Description
            Text("Where those ideas take shape, take off, and spark powerful conversations. Our purpose is to spread these ideas and deepen understanding of the world.")
                .customFont(.body)
                       .opacity(0.7)
                       .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            // MARK: Button
            button.view()
                .frame(width: 236, height: 64)
                        .overlay(
                            Label("Get started", systemImage: "arrow.forward")
                                .offset(x: 4, y: 4)
                                .font(.headline)
                        )
                        .background(
                            Color.black
                                .cornerRadius(30)
                                .blur(radius: 10)
                                .opacity(0.3)
                                .offset(y: 10)
                        )
                        .onTapGesture {
                            button.play(animationName: "active")
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                showModal = true
                            }
                    }
            
            Text("Become a member to enjoy unlimited access and directly support the writers you read most.")
                .customFont(.footnote)
                .opacity(0.7)
        }
        .padding(40)
        .padding(.top, 40)
    }
    
    var background: some View {
        RiveViewModel(fileName: "shapes").view()
            .ignoresSafeArea()
            .blur(radius: 30)
            .background(
                Image("Spline")
                    .blur(radius: 50)
                    .offset(x: 200, y: 100)
            )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
