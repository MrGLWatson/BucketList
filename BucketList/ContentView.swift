//
//  ContentView.swift
//  BucketList
//
//  Created by Gary Watson on 16/07/2020.
//  Copyright © 2020 Gary Watson. All rights reserved.
//
// Switching view states with enums

import SwiftUI

struct LoadingView: View {
    var body: some View {
        Text("Loading...")
    }
}

struct SuccessView: View {
    var body: some View {
        Text("Success")
    }
}

struct FailedView: View {
    var body: some View {
        Text("Failed")
    }
}


struct ContentView: View {
    enum LoadingState {
        case loading, success, failed
    }
    var loadingState = LoadingState.loading

    var body: some View {
        Group {
            if loadingState == .loading {
                LoadingView()
            } else if loadingState == .success {
                SuccessView()
            } else if loadingState == .failed {
                FailedView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
