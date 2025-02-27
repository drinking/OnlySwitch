//
//  ShortCutBarView.swift
//  OnlySwitch
//
//  Created by Jacklandrin on 2022/1/2.
//

import SwiftUI

struct ShortCutBarView: View {
    @EnvironmentObject var shortcutsBarVM:ShortcutsBarVM
    var body: some View {
        HStack {
            Image(systemName: "square.2.stack.3d")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
            
            Text(shortcutsBarVM.name)
                .frame(alignment: .leading)
            Spacer()
        
            ProgressView()
                .progressViewStyle(.circular)
                .scaleEffect(0.8)
                .isHidden(!shortcutsBarVM.processing,remove: true)
            
            Button(action: {
                shortcutsBarVM.runShortCut()
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.blue)
                        .frame(height:26)
                    Text("Run".localized())
                        .foregroundColor(.white)
                        .font(.system(size: 11))
                }.frame(width: 46, height: 30)
            }).buttonStyle(.plain)
                .shadow(radius: 2)
                .padding(.trailing, 6)
        }
    }
}

struct ShortCutBarView_Previews: PreviewProvider {
    static var previews: some View {
        ShortCutBarView()
    }
}
