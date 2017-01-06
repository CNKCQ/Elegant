////
////  ViewController.swift
////  Elegant
////
////  Created by KingCQ on 16/9/19.
////  Copyright © 2016年 KingCQ. All rights reserved.
////
//
//import UIKit
////import Alamofire
//typealias ReusableCell<T: Reusable> = T
//class ViewController: TableGroupController {
//    var customCell: ReusableCell<AnyObject>!
////    let titles = ["httptitle1", "httptitle2", "httptitle3"]
//     let titles = [String]()
//    let imageUrls = ["httpu1", "httpu2", "httpu3"]
//    lazy var selectedIndexpaths = [IndexPath]()
//    let phone = "15201866594"
//    
//    override func onPrepare() {
//        cellType = TestCell.self
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        title = "exit".locale
//        items.removeAll()
//        print(phone[7..<phone.length])
//
//        for (idx, title) in titles.enumerated() {
//            let ad = Ad(name: "", title: "")
//            ad.imageUrl = imageUrls[idx]
//            ad.detail = title
//            items.append(ad)
//        }
//     
//        view.backgroundColor = UIColor.orange
//        delay(after: 15) { 
//            print(self, "你好15秒")
//        }
//        
//    }
//    
//    override func onCreateTableView() {
//        super.onCreateTableView()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//    
//    func configAd<T: Item>(item: T) where T: Adable {
//        print(item.name)
//    }
//    
//    
//}
//
//extension ViewController {
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(indexPath: indexPath, cellType: cellType)
//        if let ad = items[indexPath.row] as? Ad {
//            cell.textLabel?.text = ad.imageUrl
//            cell.detailTextLabel?.text = ad.detail
//        }
//        print(cellType.reusableId)
//        return cell
//    }
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if !selectedIndexpaths.contains(indexPath) {
//            selectedIndexpaths.append(indexPath)
//        } else {
//            selectedIndexpaths.remove(at: findIndex(array: selectedIndexpaths, valueToFind: indexPath)!)
//        }
//        tableView.reloadRows(at: [indexPath], with: .none)
//    }
//    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if selectedIndexpaths.contains(indexPath) {
//            return 100
//        } else {
//            return 44
//        }
//    }
//}
