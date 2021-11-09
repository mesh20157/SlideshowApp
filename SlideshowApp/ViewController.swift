//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Y Iizaka on 2021/11/09.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    // indexの画像をstoryboardの画像にセットする
    
    
    // 配列に指定するindex番号を宣言
    var nowIndex:Int = 0
    
    // 画像の配列を宣言
    var imageArray:[UIImage] = [
            UIImage(named: "image1")!,
            UIImage(named: "image2")!,
            UIImage(named: "image3")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // indexの画像をstoryboardの画像にセットする
        imageView.image = imageArray[nowIndex]
    }
    
    //次の写真を表示
    @IBAction func nextImage(_ sender: Any) {
        
        // indexを増やして表示する画像を切り替える
        nowIndex += 1

        // indexが表示予定の画像の数と同じ場合
        if (nowIndex == imageArray.count) {
            // indexを一番最初の数字に戻す
            nowIndex = 0
        }
        // indexの画像をstoryboardの画像にセットする
        imageView.image = imageArray[nowIndex]
        
    }
    
    //前の写真を表示
    @IBAction func previousImage(_ sender: Any) {
        
        // indexが0の場合
        if (nowIndex == 0) {
            // indexを一番うしろの数字に戻す
            nowIndex = imageArray.count - 1
        }else{
            // indexを減らして表示する画像を切り替える
            nowIndex -= 1
        }
        
        // indexの画像をstoryboardの画像にセットする
        imageView.image = imageArray[nowIndex]
        
        
    }

    
    
    


}

