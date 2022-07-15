//
//  Record-0-ViewController.swift
//  Track&Field
//
//  Created by 佐野生樹 on 2022/06/19.
//

import UIKit

class Record_0_ViewController: UIViewController,UITextViewDelegate{

    @IBOutlet weak var month: UILabel!
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var weather1: UIImageView!
    @IBOutlet weak var weather2: UIImageView!
    @IBOutlet weak var maxtemper: UILabel!
    @IBOutlet weak var mintemper: UILabel!
    
    @IBOutlet weak var practice_mene_check: UIImageView!
    @IBOutlet weak var place_feild_check: UIImageView!
    @IBOutlet weak var point_check: UIImageView!
    @IBOutlet weak var pain_check: UIImageView!
    @IBOutlet weak var eat_time_check: UIImageView!
    @IBOutlet weak var sleep_check: UIImageView!
    @IBOutlet weak var tired_check: UIImageView!
    @IBOutlet weak var writinng_check: UIImageView!
    
    @IBOutlet weak var practicemene_picture: UIImageView!
    @IBOutlet weak var placefeild_picture: UIImageView!
    @IBOutlet weak var point_picture: UIImageView!
    @IBOutlet weak var pain_pisture: UIImageView!
    @IBOutlet weak var eatTime_picture: UIImageView!
    @IBOutlet weak var sleep_picture: UIImageView!
    @IBOutlet weak var tired_picture: UIImageView!
    @IBOutlet weak var writing_picture: UIImageView!
    
    
    @IBOutlet weak var writing: UITextView!
    
    @IBOutlet weak var placeTypeButton: UIButton!
    @IBOutlet weak var practicePonitButton: UIButton!
    @IBOutlet weak var mealTimeButton: UIButton!
    @IBOutlet weak var sleepStartButton: UIButton!
    @IBOutlet weak var sleepEndButton: UIButton!
    @IBOutlet weak var tiredRevelButton: UIButton!
    
    let createdDate_Formatter = DateFormatter()  //DP
    var createdDate: String = ""
    var todayMonth: String = ""
    var todayDay: String = ""
    var todayYobi: String = ""
    
    
    var aboutButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                
                let body_Array = [["練習場所タイプ","placeType"],["練習評価","practicePoint"],["食事","mealTimeButton"],["就寝時刻","sleepStart"],["起床時刻","sleepEnd"],["疲労度","tiredRevel"]]
                let placeType_Array = ["トラック","ロード","土","草地","その他"]
                let practicePoint_Array = ["★★★★★","★★★★☆","★★★☆☆","★★☆☆☆","★☆☆☆☆","☆☆☆☆☆"]
                let mealTime_Array = ["0回","1回","2回","3回","4回","5回"]
                let sleepStart_Array = ["20:00","20:30","21:00","21:30","22:00","22:30","23:00","23:30","24:00","24:30","25:00","25:30","26:00"]
                let sleepEnd_Array = ["04:00","04:30","05:00","05:30","06:00","06:30","07:00","07:30","08:00","8:30","9:00","9:30"]
                let tiredRevel_Array = ["ひどい　1","かなりある　2","普通　3","ややある　4","なし　5",]
        
                var detail_Array = [String]()
                for m in 0 ... body_Array.count - 1 {
                    let bodyJP_String = body_Array[m][0]
                    let bodyEN_String = body_Array[m][1]
                    
                    if m == 0 {
                        aboutButton = placeTypeButton
                        detail_Array = placeType_Array
                    } else if m == 1 {
                        aboutButton = practicePonitButton
                        detail_Array = practicePoint_Array
                    } else if m == 2 {
                        aboutButton = mealTimeButton
                        detail_Array = mealTime_Array
                    }else if m == 3 {
                        aboutButton = sleepStartButton
                        detail_Array = sleepStart_Array
                    }else if m == 4 {
                        aboutButton = sleepEndButton
                        detail_Array = sleepEnd_Array
                    }else if m == 5 {
                        aboutButton = tiredRevelButton
                        detail_Array = tiredRevel_Array
                    }
                    
                    
                    aboutButton.setTitle(bodyJP_String, for: .normal)
                    
                    var action_Array = [UIMenuElement]()
                    
                    for n in 0...detail_Array.count - 1 {
                        
                        let detail_String = detail_Array[n] //excerciseType_Arrayからひとつ取り出し ex."JOG"
                        
                        let action = UIAction(title: "\(detail_String)", image: UIImage(systemName: "pencil"), handler: { _ in //タイトル設定
                            print("\(bodyEN_String): \(detail_String)") //何が選択されたか表示
                            self.aboutButton.setTitle("\(detail_String)", for: .normal) //選択されたものをButtonのTitleに
                        })
                        
                        action_Array.append(action)  //上記一連の動作を設定
                        
                    }
                    
                        let items = UIMenu(options: .displayInline, children: action_Array) //ここでリストの全ボタンを配置
                    aboutButton.menu = UIMenu(title: "\(bodyJP_String)を選択", children: [items]) //リスト最上部に出てくる小さくて薄い文字
                    aboutButton.showsMenuAsPrimaryAction = true //アニメーションさせる
                    
                    
                    
                }
        
        //date
        let today = Date()
        createdDate_Formatter.dateFormat = "yyyy/MM/dd/E"//2022/07/12/日 履歴のための現在時刻の取得
        createdDate = createdDate_Formatter.string(from: today)
        createdDate_Formatter.dateFormat = "M"
        todayMonth = createdDate_Formatter.string(from: today)
        createdDate_Formatter.dateFormat = "d"
        todayDay = createdDate_Formatter.string(from: today)
        createdDate_Formatter.dateFormat = "E"
        todayYobi = createdDate_Formatter.string(from: today)
        
        month.text = todayMonth
        day.text = todayDay
        date.text = "(\(todayYobi))"
        print("日時デフォルト値: \(createdDate)")
        print("月:",todayMonth)
        print("日:",todayDay)
        print("曜日:",todayYobi)

        //design
        practicemene_picture.layer.cornerRadius = 30
        practicemene_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        practicemene_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        practicemene_picture.layer.shadowOpacity = 0.25  //影の濃さ
        practicemene_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        practicemene_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        
        placefeild_picture.layer.cornerRadius = 30
        placefeild_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        placefeild_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        placefeild_picture.layer.shadowOpacity = 0.25  //影の濃さ
        placefeild_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        placefeild_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        
        point_picture.layer.cornerRadius = 30
        point_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        point_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        point_picture.layer.shadowOpacity = 0.25  //影の濃さ
        point_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        point_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        
        pain_pisture.layer.cornerRadius = 30
        pain_pisture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        pain_pisture.layer.shadowColor = UIColor.black.cgColor //　影の色
        pain_pisture.layer.shadowOpacity = 0.25  //影の濃さ
        pain_pisture.layer.shadowRadius = 4.0 // 影のぼかし量
        pain_pisture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        
        eatTime_picture.layer.cornerRadius = 30
        eatTime_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        eatTime_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        eatTime_picture.layer.shadowOpacity = 0.25  //影の濃さ
        eatTime_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        eatTime_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        
        sleep_picture.layer.cornerRadius = 30
        sleep_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        sleep_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        sleep_picture.layer.shadowOpacity = 0.25  //影の濃さ
        sleep_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        sleep_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        
        tired_picture.layer.cornerRadius = 30
        tired_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        tired_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        tired_picture.layer.shadowOpacity = 0.25  //影の濃さ
        tired_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        tired_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        
        writing_picture.layer.cornerRadius = 30
        writing_picture.backgroundColor = UIColor(red: 250, green: 250, blue: 250, alpha: 1.0)//塗り潰し
        writing_picture.layer.shadowColor = UIColor.black.cgColor //　影の色
        writing_picture.layer.shadowOpacity = 0.25  //影の濃さ
        writing_picture.layer.shadowRadius = 4.0 // 影のぼかし量
        writing_picture.layer.shadowOffset = CGSize(width: 3.0, height: 3.0) // 影の方向
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func parctice_record() {
        self.performSegue(withIdentifier: "go-record-1", sender: self)
    }
    
    @IBAction func place_feild_record() {
        aboutButton = placeTypeButton
    }
    
    @IBAction func point_record() {
        aboutButton = practicePonitButton
    }
    
    @IBAction func pain_record() {
        self.performSegue(withIdentifier: "go-record-2", sender: self)
    }
    
    @IBAction func eat_time_record() {
        aboutButton = mealTimeButton
    }
    
    @IBAction func sleep_start_record() {
        aboutButton = sleepEndButton
    }
    
    @IBAction func sleep_end_record() {
        aboutButton = sleepEndButton
    }
    
    @IBAction func tired_record() {
        aboutButton = tiredRevelButton
    }
    
    @IBAction func register() {
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
