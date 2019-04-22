//
//  ThirdViewController.swift
//  God reply
//
//  Created by kai mitsuzawa on 2018/08/05.
//  Copyright © 2018年 kai mitsuzawa. All rights reserved.
//

import UIKit
import AVFoundation

class ThirdViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate, AVCapturePhotoCaptureDelegate {
    
    var DataList:Int = 0
    var todouhuList:Int = 0
    
    // 写真を表示するビュー
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    @IBAction func camera(_ sender: Any) {
        // カメラ起動！
        let camera = UIImagePickerController.SourceType.camera
        if UIImagePickerController.isSourceTypeAvailable(camera) {
            let picker = UIImagePickerController()
            picker.sourceType = camera
            picker.delegate = self
            self.present(picker, animated: true, completion: nil)
        }
    }
    
    
    
    
    // カメラロールから写真を選択する処理
    @IBAction func choosePicture() {
        // カメラロールが利用可能か？
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            // 写真を選ぶビュー
            let pickerView = UIImagePickerController()
            // 「.camera」にすればカメラを起動できる
            pickerView.sourceType = .photoLibrary
            // デリゲート
            pickerView.delegate = self
            // ビューに表示
            self.present(pickerView, animated: true)
        }
    }
   
        
       
    // 写真をリセットする処理
    @IBAction func resetPicture() {
        // アラートで確認
        let alert = UIAlertController(title: "確認", message: "画像を初期化してもよいですか？", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) -> Void in
            // デフォルトの画像を表示する
            self.imageView.image = UIImage(named: "default.png")
        })
        let cancelButton = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        // アラートにボタン追加
        alert.addAction(okButton)
        alert.addAction(cancelButton)
        // アラート表示
        present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as! ViewController
        nextView.image = self.imageView.image
        guard let viewController = segue.destination as? ViewController else {
            fatalError()
        }
        viewController.image = self.imageView.image
        viewController.DataList = self.DataList
        viewController.todouhuList = self.todouhuList
    }
    
    func goToViewController () {
        self.performSegue(withIdentifier: "ViewController", sender: nil)
    }
    
    // 写真を選んだ後に呼ばれる処理
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
// Local variable inserted by Swift 4.2 migrator.
let info = convertFromUIImagePickerControllerInfoKeyDictionary(info)

        // 選択した写真を取得する
        let image = info[convertFromUIImagePickerControllerInfoKey(UIImagePickerController.InfoKey.originalImage)] as! UIImage
        // ビューに表示する
        self.imageView.image = image
        // 写真を選ぶビューを引っ込める
        self.dismiss(animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @ IBAction func skip() {
        // アラートで確認
        let alert = UIAlertController(title: "確認", message: " 次に進んでもいいですか？", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) -> Void in
            self.goToViewController()
        })
        let cancelButton = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        // アラートにボタン追加
        alert.addAction(okButton)
        alert.addAction(cancelButton)
        // アラート表示
        present(alert, animated: true, completion: nil)
        
    }
    
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromUIImagePickerControllerInfoKeyDictionary(_ input: [UIImagePickerController.InfoKey: Any]) -> [String: Any] {
	return Dictionary(uniqueKeysWithValues: input.map {key, value in (key.rawValue, value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromUIImagePickerControllerInfoKey(_ input: UIImagePickerController.InfoKey) -> String {
	return input.rawValue
}
