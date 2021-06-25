//
//  ContentView.swift
//  Awesome Quizes
//
//  Created by Sharad Jain on 26/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello School")
                .padding()
            Text("Text 2")
                .padding ()
            Text("Text 3")
                .padding ()
            Button("This is a button", action: {})
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
