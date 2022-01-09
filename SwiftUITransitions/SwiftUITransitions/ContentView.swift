//
//  ContentView.swift
//  SwiftUITransitions
//
//  Created by quocnb on 2022/01/07.
//

import SwiftUI

struct ContentView: View {
    @State var tapped = false
    @Namespace var namespace

    var body: some View {
        ZStack {
            if !tapped {
                CustomView(width: 200, background: Color(.systemBlue))
            } else {
                CustomView(width: 350, background: Color(.systemPink), fullHeight: true)
            }
        }
        .onTapGesture {
            withAnimation {
                tapped.toggle()
            }
        }
    }

    private func CustomView(width: CGFloat, background: Color, fullHeight: Bool = false) -> some View {
        VStack(alignment: .leading) {
            Text("SwiftUI")
                .font(.title.weight(.bold))
                .padding()
                .matchedGeometryEffect(id: "title", in: namespace)
            Text("A video about custom trasitions")
                .font(.title2.weight(.medium))
                .padding()
                .matchedGeometryEffect(id: "sutitle", in: namespace)
            Text("Today we will learn how to leverage matched geometry effects.")
                .font(.footnote.weight(.regular))
                .padding()
                .matchedGeometryEffect(id: "description", in: namespace)
            if fullHeight {
                Spacer()
            }
        }
        .frame(width: width, alignment: .leading)
        .background(background)
        .cornerRadius(20)
        .shadow(color: Color(.secondaryLabel), radius: 12, x: 0, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
