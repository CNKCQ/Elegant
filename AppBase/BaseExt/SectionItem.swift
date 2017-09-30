//
//  SectionItem.swift
//  Elegant
//
//  Created by Steve on 01/09/2017.
//  Copyright © 2017 KingCQ. All rights reserved.
//

import UIKit

struct SectionItem {

    var title: String?
    var titleView: UIView?
    var items: [Itemable] = []
    var tail: String?
    var tailView: UIView?

    init(
        title: String? = nil,
        titleView: UIView? = nil,
        items: [Itemable]? = nil,
        tail: String? = nil,
        tailView: UIView? = nil
        ) {
        self.title = title
        self.titleView = titleView
        self.items = items ?? []
        self.tail = tail
        self.tailView = tailView
    }

}
