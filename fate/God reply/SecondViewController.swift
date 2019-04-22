//
//  secondViewController.swift
//  God reply
//
//  Created by kai mitsuzawa on 2018/08/05.
//  Copyright © 2018年 kai mitsuzawa. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var genderPickerView: UIPickerView!
    @IBOutlet weak var agePickerView: UIPickerView!
    @IBOutlet weak var prefecturesPickerView: UIPickerView!
    
    let genderList = ["指定なし","男性","女性","不明"]
    
    let ageDataList = ["指定なし","10代","20代","30代","40代","50代","60代","70代","80代","90代"]
    
    let prefectureList = ["指定なし","北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県","熊本県","大分県","鹿児島県","沖縄県"]
    
    
    var selectedGender: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genderPickerView.delegate = self
        genderPickerView.dataSource = self
        agePickerView.delegate = self
        agePickerView.dataSource = self
        prefecturesPickerView.delegate = self
        prefecturesPickerView.dataSource = self
        genderPickerView.tag = 1
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // 表示する列数
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView {
        case agePickerView:
            return ageDataList.count
        case genderPickerView:
            return genderList.count
        case prefecturesPickerView:
            return prefectureList.count
        default:
            fatalError()
        }
    }
    // UIPickerViewDelegate
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView {
        case agePickerView:
            return ageDataList[row]
        case genderPickerView:
            return genderList[row]
        case prefecturesPickerView:
            return prefectureList[row]
        default:
            fatalError()
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == genderPickerView {
            selectedGender = genderList[row]
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ThirdViewController" {
            guard let thirdVC = segue.destination as? ThirdViewController else {
                fatalError()
            }
            let gender = genderPickerView.selectedRow(inComponent:0)
            
            
            if  gender == 0 {
                thirdVC.DataList = 0
                
            } else if gender == 1 {
                thirdVC.DataList = 1
                
            } else if gender == 2 {
                thirdVC.DataList = 2
                
            } else if gender == 3 {
                thirdVC.DataList = 3
            }
            let todouhu = prefecturesPickerView.selectedRow(inComponent: 0)
            if todouhu == 0 {
                thirdVC.todouhuList = 0
            } else if todouhu == 1 {
                thirdVC.todouhuList = 1
            } else if todouhu == 2 {
                thirdVC.todouhuList = 2
            } else if todouhu == 3 {
                thirdVC.todouhuList = 3
            } else if todouhu == 4 {
                thirdVC.todouhuList = 4
            } else if todouhu == 5 {
                thirdVC.todouhuList = 5
            } else if todouhu == 6 {
                thirdVC.todouhuList = 6
            } else if todouhu == 7 {
                thirdVC.todouhuList = 7
            } else if todouhu == 8 {
                thirdVC.todouhuList = 8
            } else if todouhu == 9 {
                thirdVC.todouhuList = 9
            } else if todouhu == 10 {
                thirdVC.todouhuList = 10
            } else if todouhu == 11 {
                thirdVC.todouhuList = 11
            } else if todouhu == 12 {
                thirdVC.todouhuList = 12
            } else if todouhu == 13 {
                thirdVC.todouhuList = 13
            } else if todouhu == 14 {
                thirdVC.todouhuList = 14
            } else if todouhu == 15 {
                thirdVC.todouhuList = 15
            } else if todouhu == 16 {
                thirdVC.todouhuList = 16
            } else if todouhu == 17 {
                thirdVC.todouhuList = 17
            } else if todouhu == 18 {
                thirdVC.todouhuList = 18
            } else if todouhu == 19 {
                thirdVC.todouhuList = 19
            } else if todouhu == 20 {
                thirdVC.todouhuList = 20
            } else if todouhu == 21 {
                thirdVC.todouhuList = 21
            } else if todouhu == 22 {
                thirdVC.todouhuList = 22
            } else if todouhu == 23 {
                thirdVC.todouhuList = 23
            } else if todouhu == 24 {
                thirdVC.todouhuList = 24
            } else if todouhu == 25 {
                thirdVC.todouhuList = 25
            } else if todouhu == 26 {
                thirdVC.todouhuList = 26
            } else if todouhu == 27 {
                thirdVC.todouhuList = 27
            } else if todouhu == 28 {
                thirdVC.todouhuList = 28
            } else if todouhu == 29 {
                thirdVC.todouhuList = 29
            } else if todouhu == 30 {
                thirdVC.todouhuList = 30
            } else if todouhu == 31 {
                thirdVC.todouhuList = 31
            } else if todouhu == 32 {
                thirdVC.todouhuList = 32
            } else if todouhu == 33 {
                thirdVC.todouhuList = 33
            } else if todouhu == 34 {
                thirdVC.todouhuList = 34
            } else if todouhu == 35 {
                thirdVC.todouhuList = 35
            } else if todouhu == 36 {
                thirdVC.todouhuList = 36
            } else if todouhu == 37 {
                thirdVC.todouhuList = 37
            } else if todouhu == 38 {
                thirdVC.todouhuList = 38
            } else if todouhu == 39 {
                thirdVC.todouhuList = 39
            } else if todouhu == 40 {
                thirdVC.todouhuList = 40
            } else if todouhu == 41 {
                thirdVC.todouhuList = 41
            } else if todouhu == 42 {
                thirdVC.todouhuList = 42
            } else if todouhu == 43 {
                thirdVC.todouhuList = 43
            } else if todouhu == 44 {
                thirdVC.todouhuList = 44
            } else if todouhu == 45 {
                thirdVC.todouhuList = 45
            } else if todouhu == 46 {
                thirdVC.todouhuList = 46
            } else if todouhu == 47 {
                thirdVC.todouhuList = 47
            } else if todouhu == 48 {
                thirdVC.todouhuList = 48
            }
        }
    }
}
