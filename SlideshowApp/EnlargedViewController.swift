//
//  EnlargedViewController.swift
//  SlideshowApp
//
//  Created by Y Iizaka on 2021/11/10.
//

import UIKit

class EnlargedViewController: UIViewController {
    
    @IBOutlet weak var enlargedImage: UIImageView!
    
    var imageNumber:Int = 0

    // 画像の配列を宣言
    var imageArray:[UIImage] = [
            UIImage(named: "image1")!,
            UIImage(named: "image2")!,
            UIImage(named: "image3")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nowIndex2 = imageNumber
        // indexの画像をstoryboardの画像にセットする
        enlargedImage.image = imageArray[nowIndex2]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
