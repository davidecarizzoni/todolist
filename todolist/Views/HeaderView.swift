//
//  HeaderView.swift
//  todolist
//
//  Created by Davide Carizzoni on 14/05/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .frame(width: UIScreen.main.bounds.width * 3, height: 300)
                .rotationEffect(Angle(degrees: 15))
            VStack {
                Text("To do list")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text("Get things done")
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 40)
        }.offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
