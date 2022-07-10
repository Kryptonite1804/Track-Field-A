//
//  Login-1-4-ViewController.swift
//  Track&Field
//
//  Created by 佐野生樹 on 2022/07/08.
//

import UIKit

class Login_1_4_ViewController: UIViewController {
    
    @IBOutlet weak var groupmname_TF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func register_tapped_1_4(){
        //グループ名確認
        self.performSegue(withIdentifier: "go-1-5", sender: self)
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
