//
//  AddController.swift
//  Day2_ToDoApp
//
//  Created by Motonari Sakuma on 2022/02/22.
//

import UIKit

//todoの内容を保存するための変数の設置
var todoacts = [String]()

class AddController: UIViewController {
    
    @IBOutlet weak var TodoTextField: UITextField!
    
    @IBAction func TodoAddButton(_ sender: Any) {
        todoacts.append(TodoTextField.text!) //変数に入力内容を挿入
        TodoTextField.text = "" //追加ボタンを押したらフィールドを空欄にする。
        UserDefaults.standard.set( todoacts, forKey: "TodoList") //変数の中身をUDに追加する
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
