//
//  NextViewController.swift
//  PassValue
//
//  Created by Ted on 3/22/16.
//  Copyright © 2016 Ted. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    //宣告一個變數接收對面傳遞的值
    var countTag: Int?
    
    //把變數宣告給另一個變數所需要的複雜形式
    var c: Int = 0
    lazy var count: Int = self.c
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBAction func goBack(sender: AnyObject) {

        // 宣告一個值儲存此nextviewcontroller，把這裡的資料傳去對面設定好的變數getTemp
        let firstViewController = self.presentingViewController as! ViewController
        firstViewController.getTemp = countTag!
        
        //按鈕關閉此頁的指令
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countTag = countTag! + 1
        countLabel.text = "You have loaded this page " + String(countTag!) + " times"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
