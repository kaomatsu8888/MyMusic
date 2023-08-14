//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by kaoru matsunaga on 2023/08/11.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // シンバルの音源データを読み込み
    let cymbalDate = NSDataAsset(name: "cymbalSound")!.data
    // シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    // ギターの音源データを読み込み
    let guiterDate = NSDataAsset(name: "guitarSound")!.data
    
    // ギター用プレイヤー変数
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
            // シンバル用プレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalDate)
            
            // シンバルの音源再生
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました")
        }
    } // cymbalPlayここまで

    func guitarPlay() {
        do {
            // ギター用のプレイヤーに、音源データを指定
            guitarPlayer = try AVAudioPlayer(data: guiterDate)
            
            // ギターの音源再生
            guitarPlayer.play()
        } catch {
            
            print("ギターで、エラーが発生しました")
        }
    } // guitarPlayここまで
}
