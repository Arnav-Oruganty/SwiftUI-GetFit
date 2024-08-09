//
//  WorkoutDetailsView.swift
//  GetFit
//
//  Created by Arnav Oruganty on 24/07/24.
//

import SwiftUI
import WebKit

struct video: UIViewRepresentable {
    let videoId: String
    
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let youTubeURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else {
            return
        }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youTubeURL))
    }
}

struct WorkoutVideoView: View {
    let Id: String
    var body: some View {
        video(videoId: Id)
            .clipShape(.rect(cornerRadius: 10))
            .frame(maxWidth: .infinity)
            .frame(height: 200)
    }
}

#Preview {
    WorkoutVideoView(Id: "")
}
