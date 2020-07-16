//
//  GenerateView.swift
//  IDGeneratorApp
//
//  Created by DJ on 7/16/20.
//

import SwiftUI

struct GenerateView: View {
    @StateObject var dataModel = DataViewModel()
    @State private var count = ""
    @State private var isNavigationLinkActive = false
    
    var body: some View {
            VStack {
                NavigationLink(destination: ReaderView(dataModel: dataModel), isActive: $isNavigationLinkActive) {}
                
                Text("How many ids do you want to generate?")
                TextField("", text: $count,
                          onEditingChanged: { _ in
                            
                          }).foregroundColor(Color.gray)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.body)
                    .padding()
                    .keyboardType(UIKeyboardType.numberPad)
                
                Button("Generate") {
                    if let count = Int(count) {
                        dataModel.numberOfIds = Int(count)
                    }
                    isNavigationLinkActive = true
                }
                Spacer()
            }
    }
}

struct GenerateView_Previews: PreviewProvider {
    static var previews: some View {
        GenerateView()
    }
}
