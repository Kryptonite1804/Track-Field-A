//
//  Login-2-1-ViewController.swift
//  Track&Field
//
//  Created by 佐野生樹 on 2022/07/08.
//

import UIKit
import Firebase //FB
import FirebaseAuth
import FirebaseFirestore

class Login_2_1_ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var checkemail_TF: UITextField!
    @IBOutlet weak var checkpassword_TF: UITextField!
    
    @IBOutlet weak var mailadress_Label: UILabel!
    @IBOutlet weak var password_Label: UILabel!
    
    @IBOutlet weak var bottom_Const1: NSLayoutConstraint!  //key
    
    
    var activityIndicatorView = UIActivityIndicatorView()  //AIV
    
    var emailadress :String = ""
    var pass :String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        //TF
        checkemail_TF.delegate = self
        checkpassword_TF.delegate = self
        
        checkemail_TF.tag = 0
        checkpassword_TF.tag = 1
        
        checkpassword_TF.isSecureTextEntry = true
     
        //AIV
        activityIndicatorView.center = view.center
        activityIndicatorView.style = .whiteLarge
        activityIndicatorView.color = .darkGray
        activityIndicatorView.hidesWhenStopped = true
        view.addSubview(activityIndicatorView)
        
        checkemail_TF.addTarget(self, action: #selector(Login_2_1_ViewController.textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        checkpassword_TF.addTarget(self, action: #selector(Login_2_1_ViewController.textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        // Do any additional setup after loading the view.
        
        //key
        NotificationCenter.default.addObserver(self,
                                                   selector: #selector(keyboardWillShow),
                                                   name: UIResponder.keyboardWillShowNotification,
                                                   object: nil)
        NotificationCenter.default.addObserver(self,
                                                   selector: #selector(keyboardWillHide),
                                                   name: UIResponder.keyboardWillHideNotification,
                                                   object: nil)
        
        self.bottom_Const1.constant = UIScreen.main.bounds.size.height - 311
        
        mailadress_Label.text = ""
        mailadress_Label.layer.cornerRadius = 30
        mailadress_Label.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        mailadress_Label.layer.borderWidth = 1.0 // 枠線の太さ
        mailadress_Label.layer.shadowColor = UIColor.black.cgColor //　影の色
        mailadress_Label.layer.shadowOpacity = 0.25  //影の濃さ
        mailadress_Label.layer.shadowRadius = 4.0 // 影のぼかし量
        mailadress_Label.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向

        password_Label.text = ""
        password_Label.layer.cornerRadius = 30
        password_Label.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        password_Label.layer.borderWidth = 1.0 // 枠線の太さ
        password_Label.layer.shadowColor = UIColor.black.cgColor //　影の色
        password_Label.layer.shadowOpacity = 0.25  //影の濃さ
        password_Label.layer.shadowRadius = 4.0 // 影のぼかし量
        password_Label.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        
        // Do any additional setup after loading the view.
    }
    
    
    //TF
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() //キーボードを閉じる
        
        return true //戻り値
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        if textField.tag == 0 {
        emailadress = textField.text!
        print("emailadress: \(emailadress)")
            
        } else if textField.tag == 1 {
            pass = textField.text!
            print("password: \(pass)")
        }
            
    }
    
    
    //key
    @objc private func keyboardWillShow(_ notification: Notification) {

        guard let keyboardHeight = notification.keyboardHeight,
              let keyboardAnimationDuration = notification.keybaordAnimationDuration,
              let KeyboardAnimationCurve = notification.keyboardAnimationCurve
        else { return }

        UIView.animate(withDuration: keyboardAnimationDuration,
                       delay: 0,
                       options: UIView.AnimationOptions(rawValue: KeyboardAnimationCurve)) {
            // アニメーションさせたい実装を行う
            if UIScreen.main.bounds.size.height - 311 < keyboardHeight + 10 {
            
                self.bottom_Const1.constant = keyboardHeight + 10
                
            }
        }
    }
    
    @objc private func keyboardWillHide(_ notification: Notification) {
        guard let keyboardAnimationDuration = notification.keybaordAnimationDuration,
              let KeyboardAnimationCurve = notification.keyboardAnimationCurve
        else { return }

        UIView.animate(withDuration: keyboardAnimationDuration,
                       delay: 0,
                       options: UIView.AnimationOptions(rawValue: KeyboardAnimationCurve)) {
            self.bottom_Const1.constant = UIScreen.main.bounds.size.height - 311
        }
    }
    
    
    //Alert
    var alertController: UIAlertController!
    
    //Alert
    func alert(title:String, message:String) {
        alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true)
    }
    
    
    @IBAction func login_2_1() {
        //入力項目の確認
        
        
            if emailadress == "" {
                alert(title: "メールアドレスが\n正しく入力されていません", message: "メールアドレスを\nもう一度入れ直してください。")
                print("error: emailadress not found")
                
            } else if pass == "" {
                alert(title: "パスワードが\n正しく入力されていません", message: "パスワードを\nもう一度入れ直してください。")
                print("error: password not found")
                
            } else {
                
                activityIndicatorView.startAnimating()  //AIV
                
                Auth.auth().signIn (withEmail: emailadress, password: pass) {
                    [weak self] authResult, error in
                    
                    guard let strongSelf = self else { return }
                    
                    if let user = authResult?.user {
                    //成功
                        print("succeed: login")
                            //MARK: ★?,!不要？
                            self?.activityIndicatorView.stopAnimating()  //AIV
                            
                            //MARK: ★navigation遷移
                        self?.performSegue(withIdentifier: "go-2-2", sender: self)
                        
                    } else {
                        self?.activityIndicatorView.stopAnimating()  //AIV
                    //失敗
                    self?.alert(title: "エラー", message: "ログインに失敗しました。\n正しい情報を入力してください。")
                    print("error: password not found")
               
                    }
                }
            }
        
        
        
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
