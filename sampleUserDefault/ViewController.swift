//
//  ViewController.swift
//  sampleUserDefault
//
//  Created by AI Matsubara on 2016/05/02.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    //テキストフィールドに名前をつける
    //プロパティを呼び出すため
    @IBOutlet weak var myTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        //ユーザーデフォルトから保存されたデータを取り出す
        //ここまでは書きと一緒
        var myDefault = NSUserDefaults.standardUserDefaults()
        
        
        
        //データを呼び出して
        var myStr = myDefault.stringForKey("myString")
        
        
        //文字列が入っていたら、表示する
        print(myStr)
        
        if let  tmpstr = myStr{
            myTextField.text = tmpstr
        }
        
    }
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
        
       
    @IBAction func tapReturnKey(sender: UITextField) {
        
        //ユーザーデフォルトを用意する
        var myDefault = NSUserDefaults.standardUserDefaults()
        
        
        
        //データを書き込んで
        myDefault.setObject(sender.text, forKey: "myString")
        //myStringは情報を格納する箱の名前
        //textフィールドに入力された字が格納される
        
        
        //即反映させる
        myDefault.synchronize()
        
        //保存したものを取り出して表示するところまで書く
        //それを上に書く

        
    }
    



}

