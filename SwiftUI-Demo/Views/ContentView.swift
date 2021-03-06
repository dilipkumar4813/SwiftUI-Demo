//
//  ContentView.swift
//  SwiftUI-Demo
//
//  Created by Dilip kumar on 19/04/2020.
//  Copyright © 2020 iamdilipkumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	
	@State private var showScreen: Bool = false
	
    var body: some View {
		NavigationView {
			VStack(alignment: .leading, spacing: 10) {
				NavigationLink(destination: BasicDesignView()) {
					Text("Basic UI Details")
						.padding(10)
						.frame(maxWidth: .infinity, alignment: .leading)
				}
				
				NavigationLink(destination: BasicShapesView()) {
					Text("Basic Shapes")
						.padding(10)
						.frame(maxWidth: .infinity, alignment: .leading)
				}
				
				Button("Present View") {
					self.showScreen.toggle()
				}
				.padding(10)
				.sheet(isPresented: $showScreen) {
					Text("Hello")
				}
				
				Spacer()
			}
			.padding()
			.navigationBarTitle("Swift UI Demo")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
