//
//  BasicDesignView.swift
//  SwiftUI-Demo
//
//  Created by Dilip kumar on 19/04/2020.
//  Copyright © 2020 iamdilipkumar. All rights reserved.
//

import SwiftUI

struct BasicDesignView: View {
    var body: some View {
		VStack {
			Image("mh1")
				.resizable()
				.aspectRatio(contentMode: .fit)
			Text("Modern House Design")
				.font(.largeTitle)
			Spacer()
		}
		.navigationBarTitle(Text("Basic Details"), displayMode: .inline)
    }
}

struct BasicDesignView_Previews: PreviewProvider {
    static var previews: some View {
        BasicDesignView()
    }
}
