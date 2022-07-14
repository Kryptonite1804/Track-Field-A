//
//  History-2-ViewController.swift
//  Track&Field
//
//  Created by 佐野生樹 on 2022/07/08.
//

import UIKit

class History_2_ViewController: UIViewController {

    @IBOutlet weak var today_place_feild: UILabel!
    @IBOutlet weak var today_point: UILabel!
    @IBOutlet weak var today_pain: UILabel!
    @IBOutlet weak var today_eat_time: UILabel!
    @IBOutlet weak var today_sleep: UILabel!
    @IBOutlet weak var today_tired: UILabel!
    @IBOutlet weak var today_detail: UITextView!
    
    
    @IBOutlet weak var practicePlaceType_picture: UIImageView!
    @IBOutlet weak var practicePoint_picture: UIImageView!
    @IBOutlet weak var pain_picture: UIImageView!
    @IBOutlet weak var eatTime_picture: UIImageView!
    @IBOutlet weak var sleep_picture: UIImageView!
    @IBOutlet weak var tired_picture: UIImageView!
    @IBOutlet weak var writing_picture: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        practicePlaceType_picture.layer.cornerRadius = 5
        practicePlaceType_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        practicePlaceType_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        practicePlaceType_picture.layer.shadowOpacity = 0.25  //影の濃さ
        practicePlaceType_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        practicePlaceType_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        practicePlaceType_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        practicePlaceType_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        practicePoint_picture.layer.cornerRadius = 5
        practicePoint_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        practicePoint_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        practicePoint_picture.layer.shadowOpacity = 0.25  //影の濃さ
        practicePoint_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        practicePoint_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        practicePoint_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        practicePoint_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        pain_picture.layer.cornerRadius = 5
        pain_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        pain_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        pain_picture.layer.shadowOpacity = 0.25  //影の濃さ
        pain_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        pain_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        pain_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        pain_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        eatTime_picture.layer.cornerRadius = 5
        eatTime_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        eatTime_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        eatTime_picture.layer.shadowOpacity = 0.25  //影の濃さ
        eatTime_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        eatTime_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        eatTime_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        eatTime_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        sleep_picture.layer.cornerRadius = 5
        sleep_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        sleep_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        sleep_picture.layer.shadowOpacity = 0.25  //影の濃さ
        sleep_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        sleep_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        sleep_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        sleep_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        tired_picture.layer.cornerRadius = 5
        tired_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        tired_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        tired_picture.layer.shadowOpacity = 0.25  //影の濃さ
        tired_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        tired_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        tired_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        tired_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        writing_picture.layer.cornerRadius = 5
        writing_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        writing_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        writing_picture.layer.shadowOpacity = 0.25  //影の濃さ
        writing_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        writing_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        writing_picture.layer.borderColor = UIColor(red: 174, green: 55, blue: 247, alpha: 0.75).cgColor  // 枠線の色
        writing_picture.layer.borderWidth = 1.0 // 枠線の太さ
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pain() {
        self.performSegue(withIdentifier: "go-his-3", sender: self)
    }
    
    @IBAction func back() {
        self.navigationController?.popViewController(animated: true)
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
