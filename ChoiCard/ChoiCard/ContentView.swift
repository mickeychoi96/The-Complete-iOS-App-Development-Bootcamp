//
//  ContentView.swift
//  ChoiCard
//
//  Created by 최유현 on 10/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Yuhyeon Choi")
                    .font(.title)
                    .bold()
                .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
            }
        }
    }
}

#Preview {
    ContentView()
}
