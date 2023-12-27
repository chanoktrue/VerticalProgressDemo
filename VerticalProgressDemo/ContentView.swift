//
//  ContentView.swift
//  VerticalProgressDemo
//
//  Created by Thongchai Subsaidee on 21/12/23.
//

import SwiftUI

struct ContentView: View {
    
    let datas = PopulateData.exerciseData
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(datas.indices, id: \.self) {index in
                    CustomRowView(
                        image:  Image(systemName: "smallcircle.filled.circle"),
                        start: 60,
                        rightPadding: 50,
                        color: .gray.opacity(0.5)) {
                            FitnessCellView()
                    }
                    
                }
            }
        }

    }
}

#Preview {
    ContentView()
}


struct CustomRowView<Content: View>: View {
    let image: Image
    let start: CGFloat
    let rightPadding: CGFloat
    let color: Color
    let content: Content
    let position: CustomLineShape.Position
    
    init(image: Image, start: CGFloat, rightPadding: CGFloat, color: Color,
         position: CustomLineShape.Position = .start, @ViewBuilder _ content: @escaping() -> Content) {
        self.image = image
        self.start = start
        self.rightPadding = rightPadding
        self.color = color
        self.content = content()
        self.position = position
    }
    
    var body: some View {
        HStack {
            ZStack {
                CustomLineShape(start: start)
                    .stroke(style: StrokeStyle(lineWidth: 3))
                    .foregroundColor(color)
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(.leading, 10)
                    .foregroundColor(.green)
            }
        .frame(width: start + rightPadding)
        content
        Spacer()
        }
    }
}


struct CustomLineShape: Shape {
    let start: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: start, y: rect.minY))
        path.addLine(to: CGPoint(x: start, y: 1.5 * rect.maxY))
        
        return path
    }
    
    enum Position {
        case start
        case end
    }
}
