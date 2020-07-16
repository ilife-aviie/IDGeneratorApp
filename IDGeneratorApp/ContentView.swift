//
//  ContentView.swift
//  IDGeneratorApp
//
//  Created by DJ on 7/16/20.
//

import SwiftUI

struct ContentView: View {
    @StateObject var dataModel = DataViewModel()
    
    var body: some View {
        NavigationView {
            GenerateView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(dataModel: DataViewModel())
    }
}
