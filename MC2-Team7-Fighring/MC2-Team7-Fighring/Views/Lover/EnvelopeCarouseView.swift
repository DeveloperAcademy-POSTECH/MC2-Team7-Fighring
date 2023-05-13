//
//  EnvelopeCarouseView.swift
//  MC2-Team7-Fighring
//
//  Created by 이용준의 Macbook on 2023/05/09.
//

import SwiftUI

struct EnvelopeCarouseView<Content: View, T: Identifiable>: View {
    
    @Binding var index: Int
    @ObservedObject var envelopeIndex = EnvelopeIndex()
    @Binding var currentIndex: Int
    @GestureState var offset: CGFloat = 0
    var content: (T) -> Content
    var list: [T]
    var spacing: CGFloat
    var trailingSpace: CGFloat
    
    init(spacing: CGFloat = 15, trailingSpace: CGFloat = 100, currentIndex: Binding<Int>,index: Binding<Int>, items: [T], @ViewBuilder content: @escaping (T)->Content){ //, week: Binding<Int>, current: Binding<Int>, currentIndex: Int,
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.content = content
        self._currentIndex = currentIndex
    }
    
    var body: some View{
        
        GeometryReader{proxy in
            let width = proxy.size.width - (trailingSpace - spacing)
            let adjustMentWidth = (trailingSpace / 2) - spacing
            
            HStack(spacing: spacing){
                
                ForEach(list[0...envelopeIndex.week - 1]){item in
                    
                    content(item)
                        .frame(width: proxy.size.width - trailingSpace)
                }
            }.padding(.horizontal, spacing)
                .offset(x: (CGFloat(currentIndex) * -width) + (adjustMentWidth) + offset)
                .gesture(
                    DragGesture()
                        .updating($offset, body: { value, out, _ in
                            out = value.translation.width
                        })
                        .onEnded({ value in
                            let offsetX = value.translation.width
                            
                            let progress = -offsetX / width
                            let roundIndex = progress.rounded()
                            
                            currentIndex = max(min(currentIndex + Int(roundIndex), envelopeIndex.week - 1), 0)
                            currentIndex = index
                            
                        })
                        .onChanged({value in
                            let offsetX = value.translation.width
                            
                            let progress = -offsetX / width
                            let roundIndex = progress.rounded()
                            
                            index = max(min(currentIndex + Int(roundIndex), envelopeIndex.week - 1), 0)
                        })
            )
        }
        .animation(.easeInOut, value: offset == 0)
    }
    
}

//struct EnvelopeCarouseView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoverHome(week: .constant(6), currentIndex: .constant(5), current: .constant(5))
//    }
//}
