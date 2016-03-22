//
//  ViewController.swift
//  PassValue
//
//  Created by Ted on 3/22/16.
//  Copyright © 2016 Ted. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changMe: UIButton!
    
    //透過segue呼叫nextViewCtrl，需先給segue的identifier一個名字
    @IBAction func segueOver(sender: AnyObject) {
        performSegueWithIdentifier("showNextCtrl", sender: nil)
    }
    
    
    //不經過segue，直接呼叫隔壁的controller，但要先宣告成值
    //但不透過segue就無法用最下面的prepareForSegue傳值過去
    @IBAction func DirectCallOfDuty(sender: AnyObject) {
        let varCtrl = storyboard?.instantiateViewControllerWithIdentifier("nextViewCtrl")
        presentViewController(varCtrl!, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 改變按鈕的顯示狀態
        self.changMe.setTitle("Touch me and I'll change", forState: .Normal)
        self.changMe.setTitle("Now you see me 2 is coming", forState: .Highlighted)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        //可以把debug nevigator設在這一行
    }
    
    //設定接收next controller傳來值的變數
    var msgRecieving: String?
    var getTemp: Int = 0
    
    //在使用segue之前準備要傳遞的東西及動作

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //將segue指向的nextViewController指定給一個值
        let destCtrl = segue.destinationViewController as! NextViewController
        //把要傳遞過去的值指定給對面在接收的變數countTag
        destCtrl.countTag = getTemp
    }

}

