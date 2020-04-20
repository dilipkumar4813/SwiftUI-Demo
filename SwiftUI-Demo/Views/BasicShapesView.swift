//
//  BasicShapesView.swift
//  SwiftUI-Demo
//
//  Created by Dilip kumar on 20/04/2020.
//  Copyright © 2020 iamdilipkumar. All rights reserved.
//

import SwiftUI

struct BasicShapesView: View {
	
    var body: some View {
		VStack {
			
			Text("Circle")
				.font(.title)
			
			HStack {
				Circle()
					.fill(Color.red)
					.frame(width: 80, height: 80)
					.padding()
				
				Circle()
					.stroke(Color.red, lineWidth: 2)
					.frame(width: 80, height: 80)
					.padding()
			}
			
			Text("Rectangle")
				.font(.title)
			
			HStack {
				Rectangle()
					.fill(Color.orange)
					.frame(width:100, height: 50)
					.padding()
				
				Rectangle()
					.stroke(Color.orange, lineWidth: 2)
					.frame(width:100, height: 50)
					.padding()
			}
			
			Text("Rotated Shape")
				.font(.title)
			
			HStack {
				RotatedShape(shape: Rectangle(), angle: Angle(degrees: 45.0))
					.fill(Color.green)
					.frame(width: 50, height: 100)
					.padding()
				
				RotatedShape(shape: Rectangle(), angle: Angle(degrees: 45.0))
					.stroke(Color.green, lineWidth: 2)
					.frame(width: 50, height: 100)
					.padding()
			}
		}
		.navigationBarTitle(Text("Basic Shapes"), displayMode: .inline)
    }
}

struct BasicShapesView_Previews: PreviewProvider {
    static var previews: some View {
        BasicShapesView()
    }
}
