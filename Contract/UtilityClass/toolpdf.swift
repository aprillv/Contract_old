//
//  toolpdf.swift
//  Contract
//
//  Created by April on 4/26/16.
//  Copyright © 2016 HapApp. All rights reserved.
//

import Foundation

class toolpdf: NSObject {
    let pdfSignatureFields = [
    ["p1bottom1",
    "p1bottom2",
    "p1bottom3",
    "p1bottom4"],[
    "p2bottom1",
    "p2bottom2",
    "p2bottom3",
    "p2bottom4"],[
    "p3bottom1",
    "p3bottom2",
    "p3bottom3",
    "p3bottom4"],[
    "p4bottom1",
    "p4bottom2",
    "p4bottom3",
    "p4bottom4"],[
    "p5bottom1",
    "p5bottom2",
    "p5bottom3",
    "p5bottom4"],[
    "p6bottom1",
    "p6bottom2",
    "p6bottom3",
    "p6bottom4"],[
    "p7bottom1",
    "p7bottom2",
    "p7bottom3",
    "p7bottom4"],[
    "p8bottom1",
    "p8bottom2",
    "p8bottom3",
    "p8bottom4",
    "p8buyer1Sign",
    "p8buyer2Sign",
    "p8seller1Sign",
    "p8seller2Sign"],[
    "p9bottom1",
    "p9bottom2",
    "p9bottom3",
    "p9bottom4",
    "p1T3bottom1",
    "p1T3bottom3",
    "p1T3bottom4",
    "p2T3buyer1Sign",
    "p2T3buyer2Sign",
    "p2T3seller1Sign",
    "p2T3seller2Sign",
    "p2T3bottom1",
    "p2T3bottom2",
    "p2T3bottom3",
    "p2T3bottom4",
    "p1T3bottom2",
    "brokerbuyer2Sign",
    "p1Ibottom1",
    "p1Ibottom2",
    "p1Ibottom3",
    "p1Ibottom4",
    "p2Ibrokerbuyer1Sign",
    "p2Ibottom1",
    "p2Ibottom2",
    "p2Ibottom3",
    "p2Ibottom4",
    "p1bottom4",
    "p1Abottom3",
    "p1Abottom1",
    "p1Abottom2",
    "p2Abottom2",
    "p2Abottom1",
    "p3Abottom1",
    "p3Abottom2",
    "p3Abottom3",
    "p4Abuyer1Sign",
    "p4Abuyer2Sign",
    "p4Abottom4",
    "p4Abottom3",
    "p4Abottom2",
    "p4Abottom1",
    "p5Abottom1",
    "p5Abottom2",
    "p5Abottom3",
    "p5Abottom4",
    "p6Abuyer1Sign",
    "p6Abuyer2Sign",
    "p6Aseller1Sign",
    "p6Abottom1",
    "p6Abottom2",
    "p6Abottom3",
    "p6Abottom4",
    "p2Abottom3",
    "p1Abottom4",
    "p2Abottom4",
    "buyer1Sign",
    "p1EAbuyer2Sign",
    "p1EAbottom1",
    "p1EAbottom2",
    "p1EAbottom3",
    "p1EAbottom4",
    "p1EBbuyer1Sign",
    "p1EBExhibitbp1sellerInitialSign",
    "p1EBbuyer2Sign",
    "p1EBbottom1",
    "p1EBbottom2",
    "p1EBbottom3",
    "p1EBbottom4",
    "p1ECbottom1",
    "p1ECbottom2",
    "p1ECbottom3",
    "p1ECbottom4",
    "p2ECbottom1",
    "p2ECbottom2",
    "p2ECbottom3",
    "p2ECbottom4",
    "p3ECbottom1",
    "p3ECbottom3",
    "p3ECbottom4",
    "p3ECbottom2",
    "p1Bbottom1",
    "p1Bbottom2",
    "p2Bbottom1",
    "p2Bbottom2",
    "p3Bbottom1",
    "p3Bbottom2",
    "p4Bbottom1",
    "p4Bbottom2",
    "p5Bbuyer1Sign",
    "p5Bbuyer2Sign",
    "p1ACbottom1",
    "p1ACbottom2",
    "p1ACbottom3",
    "p1ACbottom4",
    "p1ADbottom1",
    "p1ADbottom2",
    "p1ADbottom3",
    "p1ADbottom4",
    "p2ADbuyer1Sign",
    "p2ADbuyer2Sign",
    "p2ADbottom1",
    "p2ADbottom2",
    "p2ADbottom3",
    "p2ADbottom4",
    "p1AEbottom1",
    "p1AEbottom2",
    "p1AEbottom3",
    "p1AEbottom4",
    "p2AEbuyer1Sign",
    "p2AEbuyer2Sign",
    "p2AEbottom1",
    "p2AEbottom2",
    "p2AEbottom3",
    "p2AEbottom4",
    "p1Fbuyer1Sign",
    "p1Fbuyer2Sign",
    "p1Fbottom1",
    "p1Fbottom2",
    "p1Fbottom3",
    "p1Fbottom4",
    "p1Wbottom1",
    "p1Wbottom2",
    "p1Wbottom3",
    "p1Wbottom4",
    "p2Wbuyer1Sign",
    "p2Wbuyer2Sign",
    "p2Wseller1Sign",
    "p2Wbottom1",
    "p2Wbottom2",
    "p2Wbottom3",
    "p2Wbottom4",
    "p1Dbuyer1Sign",
    "p1Dbuyer2Sign",
    "p1Dbottom1",
    "p1Dbottom2",
    "p1Dbottom3",
    "p1Dbottom4",
    "p1Hhoa1Sign3",
    "p1Hhoa2Sign3",
    "p1Hhoa3Sign3",
    "p1Hhoa3aSign3",
    "p1Hhoa3bSign3",
    "p1Hhoa4Sign3",
    "p1Hhoa4aSign3",
    "p1Hhoa4bSign3",
    "p1Hhoa4cSign3",
    "p1Hhoa4dSign3",
    "p1Hhoa4eSign3",
    "p1Hhoa5Sign3",
    "p1Hhoa6Sign3",
    "p1Hhoa6aSign3",
    "p1Hbottom1",
    "p1Hbottom2",
    "p1Hbottom3",
    "p1Hbottom4",
    "p2Hbottom1",
    "p2Hbottom2",
    "p2Hbottom3",
    "p2Hbottom4",
    "p3Hbottom1",
    "p3Hbottom2",
    "p3Hbottom3",
    "p3Hbottom4",
    "p3Hbuyer1Sign",
    "p3Hbuyer2Sign",
    "p2Hhoa6bSign3",
    "p2Hhoa6cSign3",
    "p2Hhoa6dSign3",
    "p2Hhoa6eSign3",
    "p2Hhoa6fSign3",
    "p2Hhoa6gSign3",
    "p2Hhoa6hSign3",
    "p2Hhoa6iSign3",
    "p2Hhoa7Sign3",
    "p2Hhoa8Sign3",
    "p2Hhoa9Sign3",
    "p2Hhoa10Sign3",
    "p2Hhoa11Sign3",
    "p3Hhoa12Sign3",
    "p3Hhoa12aSign3",
    "p3Hhoa12bSign3",
    "p3Hhoa13Sign3",
    "p3Hhoa14Sign3",
    "p3Hhoa15Sign3",
    "p3Hhoa16Sign3",
    "p1AHbuyer1Sign",
    "p1AHbuyer2Sign",
    "p1AHseller1Sign",
    "p1AHseller2Sign",
    "p1AHbottom1",
    "p1AHbottom2",
    "p1AHbottom3",
    "p1AHbottom4",
    "p1ACbuyer1Sign",
    "p1ACbuyer2Sign",
    "p1ACseller1Sign",
    "p1ACbuyer1Sign",
    "p1ACbuyer2Sign",
    "p1ACseller1Sign"]]
}
