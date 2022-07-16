//
//  History-1-ViewController.swift
//  Track&Field
//
//  Created by 佐野生樹 on 2022/07/08.
//

import UIKit

class History_1_ViewController: UIViewController {
    
    @IBOutlet weak var month: UILabel!
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var weather1: UIImageView!
    @IBOutlet weak var weather2: UIImageView!
    @IBOutlet weak var maxtemper: UILabel!
    @IBOutlet weak var mintemper: UILabel!
    @IBOutlet weak var today_practicetype: UILabel!
    @IBOutlet weak var today_mene: UILabel!
    @IBOutlet weak var today_up_distance: UILabel!
    @IBOutlet weak var todat_up_time: UILabel!
    
    /*
    @IBOutlet weak var main_mene_number: UILabel!
    @IBOutlet weak var main_mene_distance: UITextField!
    @IBOutlet weak var main_mene_time: UILabel!
     */
    
    @IBOutlet weak var table_view: UITableView!
    @IBOutlet weak var today_down_distance: UILabel!
    @IBOutlet weak var today_down_time: UILabel!
    @IBOutlet weak var today_total_distance: UILabel!
    
    
    @IBOutlet weak var practiceType_picture: UIImageView!
    @IBOutlet weak var parcticemene_picture: UIImageView!
    @IBOutlet weak var up_picture: UIImageView!
    @IBOutlet weak var down_picture: UIImageView!
    @IBOutlet weak var total_picture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        practiceType_picture.layer.cornerRadius = 5
        practiceType_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        practiceType_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        practiceType_picture.layer.shadowOpacity = 0.25  //影の濃さ
        practiceType_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        practiceType_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        practiceType_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        practiceType_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        parcticemene_picture.layer.cornerRadius = 5
        parcticemene_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        parcticemene_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        parcticemene_picture.layer.shadowOpacity = 0.25  //影の濃さ
        parcticemene_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        parcticemene_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        parcticemene_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        parcticemene_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        up_picture.layer.cornerRadius = 5
        up_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        up_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        up_picture.layer.shadowOpacity = 0.25  //影の濃さ
        up_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        up_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        up_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        up_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        down_picture.layer.cornerRadius = 5
        down_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        down_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        down_picture.layer.shadowOpacity = 0.25  //影の濃さ
        down_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        down_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        down_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        down_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        total_picture.layer.cornerRadius = 5
        total_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        total_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        total_picture.layer.shadowOpacity = 0.25  //影の濃さ
        total_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        total_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        total_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        total_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func otherinfo() {
        self.performSegue(withIdentifier: "go-his-2", sender: self)
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
