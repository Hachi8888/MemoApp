//
//  ViewController.swift
//  MemoApp
//
//  Created by VERTEX22 on 2019/08/03.
//  Copyright © 2019 N-project. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
     // ★スラッシュ2本のあとは半角スペースを空ける
     // ★スラッシュ3本+optionキーでtextViewを選択するとドキュメントコメントに反映される ↓
    ///メモ2
        @IBOutlet weak var textView: UITextView!
    
    // ★viewDidLoad...画面が "開かれる前" に "一度だけ" 読まれる
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //textViewがUITextViewDelegateを使えるようにする
        textView.delegate = self
        
        // AppDelegateを参照する為の定数。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        // AppDelegateに定義したlastTextを参照し、textViewに格納する。
        textView.text = appDelegate.lastText
    }
        
    @IBAction func deletebutton(_ sender: UIButton) {
        textView.text = ""
    }
    
    func textViewDidChange(_ textView:UITextView) {
        // AppDelegateを呼び出して変数に格納します。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //AppDelegateに記述した"lastText"に入力されている内容を格納します
        appDelegate.lastText = textView.text
        
    }



}

