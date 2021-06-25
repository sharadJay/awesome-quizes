//
//  HomeScreen.swift
//  Awesome Quizes
//
//  Created by Sharad Jain on 26/05/21.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        Button("Start Quiz", action: {})
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            .cornerRadius(10)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
