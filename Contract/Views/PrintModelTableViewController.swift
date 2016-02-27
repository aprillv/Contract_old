//
//  PrintModelTableViewController.swift
//  Contract
//
//  Created by April on 2/18/16.
//  Copyright © 2016 HapApp. All rights reserved.
//

import UIKit
protocol ToDoPrintDelegate
{
    func GoToPrint(modelNm: [String])
}
class PrintModelTableViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate, UIGestureRecognizerDelegate{
    // MARK: - Constanse
    
    @IBOutlet var printBtn: UIButton!{
        didSet{
            printBtn.layer.cornerRadius = 5.0
            printBtn.hidden = true
        }
    }
    var delegate : ToDoPrintDelegate?
    
    
    
    @IBAction func dismissSelf(sender: UITapGestureRecognizer) {
        //        print(sender)
        //        let point = sender.locationInView(view)
        //        if !CGRectContainsPoint(tableview.frame, point) {
        self.dismissViewControllerAnimated(true){}
        //        }
        
    }
    @IBOutlet var tableHeight: NSLayoutConstraint!
    
    @IBOutlet var tablex: NSLayoutConstraint!
    @IBOutlet var tabley: NSLayoutConstraint!
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool {
        let point = touch.locationInView(view)
        return !CGRectContainsPoint(tableview.frame, point)
    }
    @IBOutlet var tableview: UITableView!{
        didSet{
            tableview.layer.cornerRadius = 8.0
        }
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.title = "Print"
        view.superview?.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        //        view.superview?.bounds = CGRect(x: 0, y: 0, width: tableview.frame.width, height: 44 * CGFloat(5))
    }
    
    private struct constants{
        static let Title : String = "Select"
        static let CellIdentifier : String = "Address Cell Identifier"
        
        static let cellReuseIdentifier = "cellIdentifier"
        static let cellHeight = 44.0
    }
    var printList: [String] = [
        CConstants.ActionTitleContract
        , CConstants.ActionTitleThirdPartyFinancingAddendum
        , CConstants.ActionTitleINFORMATION_ABOUT_BROKERAGE_SERVICES
        , CConstants.ActionTitleAddendumA
        , CConstants.ActionTitleEXHIBIT_A
        , CConstants.ActionTitleEXHIBIT_B
        , CConstants.ActionTitleEXHIBIT_C
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userInfo = NSUserDefaults.standardUserDefaults()
        if userInfo.boolForKey(CConstants.UserInfoIsContract) {
            printList.append(CConstants.ActionTitleAddendumC)
            printList.append(CConstants.ActionTitleClosingMemo)
            printList.append(CConstants.ActionTitleDesignCenter)
            printList.append(CConstants.ActionTitleGoContract)
        }else{
            printList.append(CConstants.ActionTitleGoDraft)
        }
        
        tableHeight.constant = CGFloat(Double(printList.count) * constants.cellHeight)
        tableview.updateConstraintsIfNeeded()
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return printList.count
    }
    
    //    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        return constants.Title
    //    }
    //     func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    //        return 44
    //    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(constants.cellReuseIdentifier, forIndexPath: indexPath)
//        let a = UIView(frame: CGRect(x: 0, y: 0, width: cell.frame.size.width, height:  cell.frame.size.height))
//        a.backgroundColor = UIColor(red: 246/255.0, green: 246/255.0, blue: 246/255.0, alpha: 1)
//        cell.selectedBackgroundView = a
        cell.separatorInset = UIEdgeInsetsZero
        cell.layoutMargins = UIEdgeInsetsZero
        cell.preservesSuperviewLayoutMargins = false
        cell.textLabel?.text = printList[indexPath.row]
        if indexPath.row == (printList.count - 1) {
            cell.textLabel?.textAlignment = .Center
            cell.textLabel?.textColor = UIColor.whiteColor()
            cell.contentView.backgroundColor = CConstants.ApplicationColor
            cell.backgroundColor = CConstants.ApplicationColor
        }else{
            cell.textLabel?.textAlignment = .Left
            
            let userinfo = NSUserDefaults.standardUserDefaults()
            if let filesNames = userinfo.valueForKey(CConstants.UserInfoPrintModel) as? [String] {
                if filesNames.contains(printList[indexPath.row]) {
                    cell.accessoryType = UITableViewCellAccessoryType.Checkmark
                    let iv = UIImageView(image: UIImage(named: "checked"))
                    iv.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
                    cell.accessoryView = iv
                }else{
                    let iv = UIImageView(image: UIImage(named: "check"))
                    iv.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
                    cell.accessoryView = iv
                }
            }else{
                let iv = UIImageView(image: UIImage(named: "check"))
                iv.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
                cell.accessoryView = iv
            }
        }
        
        
        
        //        if self.modalPresentationStyle != .Popover {
        //            cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        //        }
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.row < (printList.count - 1) {
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            cell?.accessoryType = cell?.accessoryType == UITableViewCellAccessoryType.None ? UITableViewCellAccessoryType.Checkmark : UITableViewCellAccessoryType.None
            let iv :UIImageView
            if cell?.accessoryType == UITableViewCellAccessoryType.Checkmark {
                iv = UIImageView(image: UIImage(named: "checked"))
            }else{
                iv = UIImageView(image: UIImage(named: "check"))
            }
            
            iv.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
            cell?.accessoryView = iv
            
        }else{
            var selectedCellArray = [NSIndexPath]()
            
            for i in 0...printList.count-1 {
                let index = NSIndexPath(forRow: i, inSection: 0)
                if let cell = tableView.cellForRowAtIndexPath(index) {
                    if cell.accessoryType == UITableViewCellAccessoryType.Checkmark {
                        selectedCellArray.append(index)
                    }
                }
            }
            if selectedCellArray.count == 0 {
                return
            }else{
                self.dismissViewControllerAnimated(true){
                    if let delegate1 = self.delegate {
                        var filesNames = [String]()
                        for indexPath0 in selectedCellArray {
                            let title = self.printList[indexPath0.row]
                            filesNames.append(title)
                            
                            
                            //
                        }
                        let userinfo = NSUserDefaults.standardUserDefaults()
                        userinfo.setValue(filesNames, forKey: CConstants.UserInfoPrintModel)
                        delegate1.GoToPrint(filesNames)
                    }
                }
            }
            
            
        }
    }
    
    override var preferredContentSize: CGSize {
        
        get {
            return CGSize(width: tableview.frame.width, height: CGFloat(constants.cellHeight * Double(printList.count)))
        }
        set { super.preferredContentSize = newValue }
    }
    
    
    
}
