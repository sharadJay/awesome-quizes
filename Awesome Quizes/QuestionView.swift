//
//  QuestionView.swift
//  Awesome Quizes
//
//  Created by Sharad Jain on 26/05/21.
//

import SwiftUI

struct Question {
    let title: String
    let options: [Option]
}

struct Option {
    let value: String
    let isCorrectAnswer: Bool
}

struct QuestionView: View {
    var question: Question
    @State var selectedIndex: Int?
    var body: some View {
        VStack(alignment: .leading) {
            Text(question.title)
                .font(.title)
                .padding()
            ForEach(Array(question.options.enumerated()), id: \.1.value) { (index, option) in
                HStack {
                    Image(systemName: index == selectedIndex ? "checkmark.circle": "circle").onTapGesture {
                        selectedIndex = index
                    }
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text(option.value)
                }.padding(3)
            }
            Button("Next", action: {})
                .padding()
                .border(Color.black)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(6)
                .padding(.horizontal, 150)
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        let options = [Option(value: "Option 1", isCorrectAnswer: false),
                       Option(value: "Option 2", isCorrectAnswer: false),
                       Option(value: "Option 3", isCorrectAnswer: false),
                       Option(value: "Option 4", isCorrectAnswer: false),
                       Option(value: "Option 5", isCorrectAnswer: false)]
        let question = Question(title: "A different question to answer?",
                                options: options)
        QuestionView(question: question)
    }
}
