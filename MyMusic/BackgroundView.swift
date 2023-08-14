//
//  BackgroundView.swift
//  MyMusic
//
//  Created by kaoru matsunaga on 2023/08/13.
//

import SwiftUI

struct BackgroundView: View {
    // 画像ファイル名
    let imageName: String
    var body: some View {
        // 背景画像を指定する
        Image(imageName)
        // リサイズする
            .resizable()
        // 画面いっぱいになるようにセーフエリア外まで表示されるように指定
            .ignoresSafeArea()
        // アスペクト比(縦横比)を維持して短編基準に収まるようにする
            .scaledToFill()
    } //bodyここまで
} //backgroundView ここまで

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "background")
    }
}
