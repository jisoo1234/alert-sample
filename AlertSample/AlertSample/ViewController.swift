//
//  ViewController.swift
//  AlertSample
//
//  Created by ktds 21 on 2017. 8. 16..
//  Copyright © 2017년 CJ, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func openactionsheet(_ sender: Any) {
        
        let alert = UIAlertController(title: "알림",
                                      message: "경고다!경고!!",
                                      preferredStyle: .actionSheet)
                                        //.alert으로 띄어도됩니당
        
        let cancelBtn = UIAlertAction(title: "취소",
                                      style: .cancel,
                                      handler: {
                                                (UIAlertAction) -> Void in
                                                 print("취소한다")
                                                })
        
        //마지막 매개변수가 함수타입이면 따로 빼서 함수선언 할 수 있어
        let facebookBtn = UIAlertAction(title: "facebook", style: .default){
            (UIAlertAction) -> Void in
              print("facebook")
        }

        let twitterBtn = UIAlertAction(title: "twitter", style: .default){
            (UIAlertAction) -> Void in
            print("twitter")
        }

        
        
        
        alert.addAction(cancelBtn)
        alert.addAction(facebookBtn)
        alert.addAction(twitterBtn)
        
        self.present(alert, animated:true, completion: {
                () -> Void in
            print("화면 나타남")
        })
        
    }
    
    
    @IBAction func openalert(_ sender: Any) {
        
        let loginAlert = UIAlertController(title: "로그인",
                                           message: "id와 pw를 입력하세요",
                                           preferredStyle: .alert)
        
        loginAlert.addTextField(configurationHandler: {
                        textField in
                        textField.placeholder="id"})
        
        loginAlert.addTextField(configurationHandler: {
            textField in
            textField.placeholder="pw"
            textField.isSecureTextEntry = true})  //패스워드 보안

        
        let cancelBtn = UIAlertAction(title: "취소",
                                      style: .cancel,
                                      handler: nil)
        
        let confirmBtn = UIAlertAction(title: "확인",
                                       style: .default,
                                       handler: {
        
        alertAction in
        let id = loginAlert.textFields?[0].text
        let pw = loginAlert.textFields?[1].text
                                        
           if id == "test" && pw == "1234"
           {
              print("성공")
           } else {
               print("실패")
           }
        
        })
        
        loginAlert.addAction(cancelBtn)
        loginAlert.addAction(confirmBtn)
        
        self.present(loginAlert, animated: true, completion: nil)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

