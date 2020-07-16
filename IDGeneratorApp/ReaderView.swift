//
//  ReaderView.swift
//  IDGeneratorApp
//
//  Created by DJ on 7/16/20.
//

import SwiftUI

struct ReaderView: View {
    @StateObject var dataModel: DataViewModel
    
    var body: some View {
        VStack {
            List(dataModel.objects) { object in
                Text("\(object.id)")
            }.navigationTitle("IDs")
            
            if dataModel.objects.count > 0 {
                Button("Remove") {
                    dataModel.remove()
                }
                Spacer()
            }
        }
    }
}

struct ReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ReaderView(dataModel: DataViewModel())
    }
}
