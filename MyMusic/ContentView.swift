//
//  ContentView.swift
//  MyMusic
//
//  Created by kaoru matsunaga on 2023/08/11.
//

import SwiftUI

struct ContentView: View {
    // 音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            
            /* リファクタリングのため消去 ＋ BackgroudViewファイル差し込み +29行目のコード入れたら同じ結果になる
             // 背景画像を指定する
            Image("background")
            // リサイズする
                .resizable()
            // 画面いっぱいになるようにセーフエリア外まで表示されるように指定
                .ignoresSafeArea()
            // アスペクト比(縦横比)を維持して短編基準に収まるようにする
                .scaledToFill()
             */
            
            // 背景画像を表示する
            BackgroundView(imageName: "background")
            
            // 水平にレイアウト(横方向にレイアウト)
            HStack {
                // シンバルボタン
                Button {
                    // ボタンをタップしたときのアクション
                    // シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                } label: {
                    // 画像を表示する
                    Image("cymbal")
                }// シンバルボタンはここまで
                    
                    //ギターボタン
                Button {
                        // ボタンをタップしたときのアクション
                        // ギターの音を鳴らす
                    soundPlayer.guitarPlay()
                } label: {
                    // 画像を表示する
                    Image("guitar")
                }// HStack ここまで
            } // HStackここまで
        } // ZStack ここまで
    } // bodyここまで
} // ContentViewここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
