//
//  ContentView.swift
//  aula01b
//
//  Created by COTEMIG on 10/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var textInput: String = ""
    @State private var idadeHumana: Int? = nil
    var body: some View {
        VStack {
            Image("cachorro")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("CALCULADORA IDADE CANINA")
                .foregroundColor(Color.red)
            TextField("Digite a idade", text: $textInput)
                .keyboardType(.numberPad)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .onChange(of: textInput) { newValue in
                    if let number = Int(newValue) {
                        idadeHumana = number
                    } else {
                        idadeHumana = nil
                    }
                }
            .padding()
            
        Button("Calcular") {
            print($idadeHumana)
        }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
