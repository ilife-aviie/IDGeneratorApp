//
//  DataViewModel.swift
//  IDGeneratorApp
//
//  Created by DJ on 7/16/20.
//

import Foundation

class DataViewModel: ObservableObject {
    @Published private(set) var objects = [DataModel]()
    @Published var numberOfIds = 0 {
        didSet {
            generate(count: self.numberOfIds)
        }
    }
    
    private func generate(count: Int) {
        self.objects = {
            var objs = [DataModel]()
            for _ in 0..<count {
                objs.append(DataModel())
            }
            
            return objs
        }()
    }
    
    func remove() {
        if self.objects.count > 0 {
            self.objects.removeFirst()
        }
    }
}
