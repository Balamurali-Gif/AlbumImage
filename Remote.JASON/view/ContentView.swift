//
//  ContentView.swift
//  Remote.JASON
//
//  Created by Bala Murali on 25/01/2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImagesView: View {
    @ObservedObject var mv = MainViewModel()
    
    var body: some View {
        NavigationView {
            list (mv.albums) { image in WebImage(url: URL(string: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic"))
                // Supports options and context, like `.delayPlaceholder` to show placeholder only when error
                .onSuccess { image, data, cacheType in
                    // Success
                    // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
                }
                .resizable() // Resizable like SwiftUI.Image, you must use this modifier or the view will use the image bitmap size
                .placeholder(Image(systemName: "photo")) // Placeholder Image
                // Supports ViewBuilder as well
                .placeholder {
                    Rectangle().foregroundColor(.gray)
                }
                .indicator(.activity) // Activity Indicator
                .transition(.fade(duration: 0.5)) // Fade Transition with duration
                .scaledToFit()
                .frame(width: 300, height: 300, alignment: .center)
            }
        }
    }
