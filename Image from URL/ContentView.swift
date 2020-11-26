//
//  ContentView.swift
//  Image from URL
//
//  Created by Jeong Hyeon Uk on 2020/11/26.
//

import SwiftUI

extension String {
    func load() -> UIImage {
        // Try Catch block
        do {
            // Convert string to URL
            guard let url = URL(string: self) else {
                // Return empty image if the URL is invalid
                return UIImage()
            }
            // Convert URL to data
            let data: Data = try Data(contentsOf: url)
            // Create UIImage object from Data
            // Optional value if the image in URL does not exits
            return UIImage(data: data) ?? UIImage()
        }
        catch {
            
        }
        return UIImage()
    }
}

struct ContentView: View {
    var body: some View {
        Image(uiImage: "https://avatars1.githubusercontent.com/u/23271941?v=4".load())
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
