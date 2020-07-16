//
//  ContentView.swift
//  BucketList
//
//  Created by Gary Watson on 16/07/2020.
//  Copyright © 2020 Gary Watson. All rights reserved.
//
// Writing data to the documents directory

import SwiftUI

struct ContentView: View {
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    var body: some View {
        Text("Hello, World!")
            .onTapGesture {
                let str = "Test Message"
                let url = self.getDocumentsDirectory().appendingPathComponent("message.txt")
                do {
                    try str.write(to: url, atomically: true, encoding: .utf8)
                    let input = try String(contentsOf: url)
                    print(input)
                } catch {
                    print(error.localizedDescription)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
