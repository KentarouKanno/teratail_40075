//
//  Model.swift
//  teratail_40075
//
//  Created by Kentarou on 2016/07/05.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import Foundation
import UIKit

struct Model {
    var number: String
    var title : String
    var body  : String
    
    var image1: UIImage?
    var image2: UIImage?
    var image3: UIImage?

    static func createData() -> [Model] {
        
        var datas: [Model] = []
        let image = UIImage(named: "swift")
        let body1 = "複数行１、複数行１、複数行１、複数行１、複数行１、複数行１、複数行１"
        let body2 = "１行、１行、１行"
        let body3 = "複数行３、複数行３、複数行３、複数行３、複数行３、複数行３"
        let body4 = "複数行４、複数行４、複数行４、複数行４、複数行４、複数行４、複数行４、複数行４、複数行４、複数行４、複数行４、複数行４"
        datas.append(Model(number: "1", title: "Title1", body: body1, image1: nil, image2: nil, image3: nil))
        datas.append(Model(number: "2", title: "Title2", body: body2, image1: image, image2: nil, image3: nil))
        datas.append(Model(number: "3", title: "Title3", body: body3, image1: image, image2: image, image3: nil))
        datas.append(Model(number: "4", title: "Title4", body: body4, image1: image, image2: image, image3: image))
        return datas
    }
}
