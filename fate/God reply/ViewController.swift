//
//  ViewController.swift
//  God reply
//
//  Created by kai mitsuzawa on 2018/08/05.
//  Copyright © 2018年 kai mitsuzawa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,UITextFieldDelegate,UIScrollViewDelegate{
    
    var DataList:Int = 0
    var todouhuList:Int = 0
    
    var image: UIImage?
    var ariGatou = "ありがとう"
    var douitaSimasite = "どういたしまして"
    var ohaYou = "おはよう"
    var ohaYou2 = "おはようーー"
    var ohayouGozaimasu = "おはようございます"
    var konniTiha = "こんにちは"
    var konnBannha = "こんばんは"
    var daiSuki = "大好き"
    var kiRai = "きらい"
    var gomenNne = "ごめんね"
    var oyaSumi = "おやすみ"
    var eRa = "このエラーコードどうすればいいですか？"
    var genNki = "元気？"
    var douSita = "どうしたの？"
    var kokoDake = "ここだけの話だよ"
    var dokonoSyussinn = "どこの出身？"
    var dokoSyussinn = "どこ出身？"
    var doudeSitaka = "どうでしたか？"
    var imananiSiteta = "今何してた？"
    var kanoZyo = "彼女いるの？"
    var kareSi = "彼氏いるの？"
    var tanosiKatta = "楽しかった"
    var sayouNara = "さようなら"
    var kawaiIne = "かわいいね"
    var namaeHa = "名前は？"
    var sukittesitteta = "私のこと好き？"
    
    @IBOutlet weak var yourLavel: UILabel!
    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
  let SCREEN_SIZE = UIScreen.main.bounds.size
   
    var speak:AVSpeechSynthesizer = AVSpeechSynthesizer()
    
    @IBAction func ageback(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pictureback(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(DataList)
        
        if DataList == 0 {
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "allseason.jpg")!)
        } else if DataList == 1 {
            self.view.backgroundColor = UIColor (patternImage: UIImage(named: "vacation")!)
        } else if DataList == 2 {
            self.view.backgroundColor = UIColor (patternImage: UIImage(named: "sakura.jpg")!)
        } else if DataList == 3 {
            self.view.backgroundColor = UIColor (patternImage: UIImage(named: "space.jpg")!)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        yourLavel.text = ""
        self.imageView.image = image
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SpeakBt(_ sender: UIButton) {
        let content = AVSpeechUtterance(string: self.yourLavel.text!)
        content.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        content.pitchMultiplier = 1.0
        self.speak.speak(content)
    }
    //Viewをタップした時に起こる処理を描く関数
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //キーボードを閉じる処理
        view.endEditing(true)
    }
    
    
    @IBAction func display(_ sender: Any) {
        
        self.yourLavel.text = self.wordTextField.text
        
        if ariGatou == self.wordTextField.text{
            yourLavel.text = String("どういたしまして")
        } else if douitaSimasite == self.wordTextField.text {
            yourLavel.text = String("いえいえ")
        } else if konniTiha == self.wordTextField.text {
            yourLavel.text = String("こんにちは")
        } else if konnBannha == self.wordTextField.text {
            yourLavel.text = String("こんばんは")
        } else if ohaYou == self.wordTextField.text {
            yourLavel.text = String("おはよう--")
        } else if ohaYou2 == self.wordTextField.text {
            yourLavel.text = String("おはよう--!")
        } else if ohayouGozaimasu == self.wordTextField.text {
            yourLavel.text = String("おはよう-")
        } else if daiSuki == self.wordTextField.text {
            yourLavel.text = String("私も大好き!!!")
        } else if kiRai == self.wordTextField.text {
            yourLavel.text = String("そんなこと言わないで")
        } else if gomenNne == self.wordTextField.text {
            yourLavel.text = String("いえいえ！！")
        } else if oyaSumi == self.wordTextField.text {
            yourLavel.text = String("おやすみなさい〜")
        } else if eRa == self.wordTextField.text {
            yourLavel.text = String("ググった？")
        } else if genNki == self.wordTextField.text {
            yourLavel.text = String("元気だよー！！")
        } else if douSita == self.wordTextField.text {
            yourLavel.text = String("何にもないよー！")
        } else if kokoDake == self.wordTextField.text {
            yourLavel.text = String("なになに？")
        } else if dokonoSyussinn == self.wordTextField.text {
            yourLavel.text = String("さぁ、どこでしょう？")
        } else if doudeSitaka == self.wordTextField.text {
            yourLavel.text = String("何が？")
        } else if imananiSiteta == self.wordTextField.text {
            yourLavel.text = String("あなたのこと待ってたー")
        }  else if kanoZyo == self.wordTextField.text {
            yourLavel.text = String("ん？")
        } else if kareSi == self.wordTextField.text {
            yourLavel.text = String("ん？")
        } else if tanosiKatta == self.wordTextField.text {
            yourLavel.text = String("ん？")
        } else if sayouNara == self.wordTextField.text {
            yourLavel.text = String("さようなら〜")
        } else if kawaiIne == self.wordTextField.text {
            yourLavel.text = String("ありがとう〜")
        } else if namaeHa == self.wordTextField.text {
            yourLavel.text = String("見ての通りだけど？")
        } else if sukittesitteta == self.wordTextField.text {
            yourLavel.text = String("うん〜〜！")
        }
        
        if todouhuList == 1 {
            
            if ariGatou == self.wordTextField.text {
                yourLavel.text = String("なんもなんも")
            } else if douitaSimasite == self.wordTextField.text {
                yourLavel.text = String("どちらいか")
            } else if konnBannha == self.wordTextField.text {
                yourLavel.text = String("おばんです~")
            } else if ohaYou == self.wordTextField.text {
                yourLavel.text = String("おはよう-")
            } else if ohaYou2 == self.wordTextField.text {
                yourLavel.text = String("おはよう--!")
            } else if ohayouGozaimasu == self.wordTextField.text {
                yourLavel.text = String("おはよう-")
            } else if daiSuki == self.wordTextField.text {
                yourLavel.text = String("私もなまら好きだべさ!!")
            } else if kiRai == self.wordTextField.text {
                yourLavel.text = String("そんなこと言わないでよー")
            } else if gomenNne == self.wordTextField.text {
                yourLavel.text = String("なんも")
            } else if oyaSumi == self.wordTextField.text {
                yourLavel.text = String("おやすみなさい〜")
            } else if genNki == self.wordTextField.text {
                yourLavel.text = String("元気だっべて！")
            } else if douSita == self.wordTextField.text {
                yourLavel.text = String("なんもなんも")
            } else if kokoDake == self.wordTextField.text {
                yourLavel.text = String("なになに？")
            } else if dokonoSyussinn == self.wordTextField.text {
                yourLavel.text = String("北海道だよ〜")
            }else if dokoSyussinn == self.wordTextField.text {
                yourLavel.text = String("北海道だよ〜")
            } else if doudeSitaka == self.wordTextField.text {
                yourLavel.text = String("何が？")
            } else if imananiSiteta == self.wordTextField.text {
                yourLavel.text = String("あなたのこと待ってたー")
            } else if kanoZyo == self.wordTextField.text {
                yourLavel.text = String("わからないっぺ")
            } else if kareSi == self.wordTextField.text {
                yourLavel.text = String("わからないっぺ")
            } else if tanosiKatta == self.wordTextField.text {
                yourLavel.text = String("ん？")
            } else if sayouNara == self.wordTextField.text {
                yourLavel.text = String("したっけね〜")
            }  else if kawaiIne == self.wordTextField.text {
                yourLavel.text = String("私のことがめんこいって？")
            } else if namaeHa == self.wordTextField.text {
                yourLavel.text = String("見ての通りだけど？")
            } else if sukittesitteta == self.wordTextField.text {
                yourLavel.text = String("そだね〜〜")
            }
        }
            
        else if todouhuList == 2 {
            
            if ariGatou == self.wordTextField.text {
                yourLavel.text = String("なもなも")
            } else if douitaSimasite == self.wordTextField.text {
                yourLavel.text = String("いえいえ")
            }
        }
        if todouhuList == 3 {
            
            if ariGatou == self.wordTextField.text {
                yourLavel.text = String("なんもなんも")
            } else if douitaSimasite == self.wordTextField.text {
                yourLavel.text = String("どちらいか")
            } else if konnBannha == self.wordTextField.text {
                yourLavel.text = String("おばんです~")
            } else if ohaYou == self.wordTextField.text {
                yourLavel.text = String("おはよう-")
            } else if ohaYou2 == self.wordTextField.text {
                yourLavel.text = String("おはよう--!")
            } else if ohayouGozaimasu == self.wordTextField.text {
                yourLavel.text = String("おはよう-")
            } else if daiSuki == self.wordTextField.text {
                yourLavel.text = String("私もなまら好きだべさ!!")
            } else if kiRai == self.wordTextField.text {
                yourLavel.text = String("そんなこと言わないでよー")
            } else if gomenNne == self.wordTextField.text {
                yourLavel.text = String("なんも")
            } else if oyaSumi == self.wordTextField.text {
                yourLavel.text = String("おやすみなさい〜")
            } else if genNki == self.wordTextField.text {
                yourLavel.text = String("元気だっべて！")
            } else if douSita == self.wordTextField.text {
                yourLavel.text = String("なんもなんも")
            } else if kokoDake == self.wordTextField.text {
                yourLavel.text = String("なになに？")
            } else if dokonoSyussinn == self.wordTextField.text {
                yourLavel.text = String("北海道だよ〜")
            }else if dokoSyussinn == self.wordTextField.text {
                yourLavel.text = String("北海道だよ〜")
            } else if doudeSitaka == self.wordTextField.text {
                yourLavel.text = String("何が？")
            } else if imananiSiteta == self.wordTextField.text {
                yourLavel.text = String("あなたのこと待ってたー")
            } else if kanoZyo == self.wordTextField.text {
                yourLavel.text = String("わからないっぺ")
            } else if kareSi == self.wordTextField.text {
                yourLavel.text = String("わからないっぺ")
            } else if tanosiKatta == self.wordTextField.text {
                yourLavel.text = String("ん？")
            } else if sayouNara == self.wordTextField.text {
                yourLavel.text = String("したっけね〜")
            }  else if kawaiIne == self.wordTextField.text {
                yourLavel.text = String("私のことがめんこいって？")
            } else if namaeHa == self.wordTextField.text {
                yourLavel.text = String("見ての通りだけど？")
            } else if sukittesitteta == self.wordTextField.text {
                yourLavel.text = String("そうやね")
            }
        }
        if todouhuList == 14 {
            
            
            if ariGatou == self.wordTextField.text{
                yourLavel.text = String("どういたしまして")
            } else if douitaSimasite == self.wordTextField.text {
                yourLavel.text = String("いえいえ")
            } else if konniTiha == self.wordTextField.text {
                yourLavel.text = String("こんにちは")
            } else if konnBannha == self.wordTextField.text {
                yourLavel.text = String("こんばんは")
            } else if ohaYou == self.wordTextField.text {
                yourLavel.text = String("おはよう-")
            } else if ohaYou2 == self.wordTextField.text {
                yourLavel.text = String("おはよう--!")
            } else if ohayouGozaimasu == self.wordTextField.text {
                yourLavel.text = String("おはよう-")
            } else if daiSuki == self.wordTextField.text {
                yourLavel.text = String("私も大好き!!!")
            } else if kiRai == self.wordTextField.text {
                yourLavel.text = String("そんなこと言わないで")
            } else if gomenNne == self.wordTextField.text {
                yourLavel.text = String("いえいえ！！")
            } else if oyaSumi == self.wordTextField.text {
                yourLavel.text = String("おやすみなさい〜")
            } else if eRa == self.wordTextField.text {
                yourLavel.text = String("ググった？")
            } else if genNki == self.wordTextField.text {
                yourLavel.text = String("元気だよー！！")
            } else if douSita == self.wordTextField.text {
                yourLavel.text = String("何にもないよー！")
            } else if kokoDake == self.wordTextField.text {
                yourLavel.text = String("なになに？")
            } else if dokonoSyussinn == self.wordTextField.text {
                yourLavel.text = String("さぁ、どこでしょう？")
            } else if doudeSitaka == self.wordTextField.text {
                yourLavel.text = String("何が？")
            } else if imananiSiteta == self.wordTextField.text {
                yourLavel.text = String("あなたのこと待ってたー")
            }  else if kanoZyo == self.wordTextField.text {
                yourLavel.text = String("ん？")
            } else if kareSi == self.wordTextField.text {
                yourLavel.text = String("ん？")
            } else if tanosiKatta == self.wordTextField.text {
                yourLavel.text = String("ん？")
            } else if sayouNara == self.wordTextField.text {
                yourLavel.text = String("さようなら〜")
            } else if kawaiIne == self.wordTextField.text {
                yourLavel.text = String("ありがとう〜")
            } else if namaeHa == self.wordTextField.text {
                yourLavel.text = String("見ての通りだけど？")
            } else if sukittesitteta == self.wordTextField.text {
                yourLavel.text = String("うん〜〜！")
            }
        }
        if todouhuList == 28 {
            
            if ariGatou == self.wordTextField.text{
                yourLavel.text = String("かまへんかまへん")
            } else if douitaSimasite == self.wordTextField.text {
                yourLavel.text = String("こっちも　おおきに")
            } else if konniTiha == self.wordTextField.text {
                yourLavel.text = String("こんにちは")
            } else if konnBannha == self.wordTextField.text {
                yourLavel.text = String("こんばんは")
            } else if ohaYou == self.wordTextField.text {
                yourLavel.text = String("おはよう-")
            } else if ohaYou2 == self.wordTextField.text {
                yourLavel.text = String("おはようござんす")
            } else if ohayouGozaimasu == self.wordTextField.text {
                yourLavel.text = String("おはよう-")
            } else if daiSuki == self.wordTextField.text {
                yourLavel.text = String("めっちゃ　好きやねん")
            } else if kiRai == self.wordTextField.text {
                yourLavel.text = String("そんなこと言わへんといて〜")
            } else if gomenNne == self.wordTextField.text {
                yourLavel.text = String("気にせんといて〜")
            } else if oyaSumi == self.wordTextField.text {
                yourLavel.text = String("おやすみやす〜")
            } else if eRa == self.wordTextField.text {
                yourLavel.text = String("ググった？")
            } else if genNki == self.wordTextField.text {
                yourLavel.text = String("元気やでー！！")
            } else if douSita == self.wordTextField.text {
                yourLavel.text = String("なんにもないねん")
            } else if kokoDake == self.wordTextField.text {
                yourLavel.text = String("なになに？")
            } else if dokonoSyussinn == self.wordTextField.text {
                yourLavel.text = String("大阪やで")
            } else if doudeSitaka == self.wordTextField.text {
                yourLavel.text = String("何がやねん")
            } else if imananiSiteta == self.wordTextField.text {
                yourLavel.text = String("じぶんのことまっとった")
            }  else if kanoZyo == self.wordTextField.text {
                yourLavel.text = String("わからへん")
            } else if kareSi == self.wordTextField.text {
                yourLavel.text = String("わからへん")
            } else if tanosiKatta == self.wordTextField.text {
                yourLavel.text = String("わからへん")
            } else if sayouNara == self.wordTextField.text {
                yourLavel.text = String("さいなら〜")
            } else if kawaiIne == self.wordTextField.text {
                yourLavel.text = String("ありがとうな〜")
            } else if namaeHa == self.wordTextField.text {
                yourLavel.text = String("見ての通りだけど？")
            } else if sukittesitteta == self.wordTextField.text {
                yourLavel.text = String("そうやね")
            }
        }
        
    }
}
