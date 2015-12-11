//
//  File.swift
//  Contract
//
//  Created by April on 11/23/15.
//  Copyright © 2015 HapApp. All rights reserved.
//

import Foundation

struct CConstants{
   
    
    static let BorderColor : UIColor = UIColor(red: 204/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
    static let BackColor : UIColor = UIColor(red: 246/255.0, green: 246/255.0, blue: 246/255.0, alpha: 1)
    
    static let MsgTitle : String = "BA Contract"
    static let MsgOKTitle : String = "OK"
    static let MsgValidationTitle : String = "Validation Failed"
    static let MsgServerError : String = "Server Error, please try again later"
    static let MsgNetworkError : String = "Network Error, please check your network"
    
    static let UserInfoRememberMe :  String = "Login Remember Me"
    static let UserInfoEmail :  String = "Login Email"
    static let UserInfoPwd :  String = "Login Password"
    
    static let SegueToAddressList :  String = "adressList"
    static let SegueToSignaturePdf : String = "pdfSignature"
    static let SegueToAddendumC : String = "addendumc"
    
    
    
    static let LoggedUserNameKey : String = "LoggedUserNameInDefaults"
    static let InstallAppLink : String = "itms-services://?action=download-manifest&url=https://www.buildersaccess.com/iphone/contract.plist"
    static let ServerURL : String = "http://ssl.buildersaccess.com/"
    //validate login and get address list
    static let LoginServiceURL: String = "bacontract_login.json"
    //check app version
    static let CheckUpdateServiceURL: String = "bacontract_version.json"
    //get contract signature
    static let ContractServiceURL = "bacontract_signature.json"
    //get contract Addendum c
    static let AddendumCServiceURL = "bacontract_addendumc.json"
    //upload pdf
    static let ContractUploadPdfURL = "bacontract_upload.json"
   
    
    
    
}



