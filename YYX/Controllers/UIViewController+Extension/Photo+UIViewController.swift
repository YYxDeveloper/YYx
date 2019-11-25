//
//  Photo+UIViewController.swift
//  yyxUtilityTestProject
//
//  Created by 002 on 2018/11/9.
//  Copyright © 2018年 002. All rights reserved.
//

//import Foundation
//import Photos

//extension UIViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate{
//    //記得設定權限
//    //原生相機範例：https://mega.nz/#!qDBwACxR!glPWh8LeWDIGkWxqyU-i8tNMGEjHvXpuIuzk2QoA41k
//    func openGallery() {
//        let imagePicker = UIImagePickerController()
//        imagePicker.delegate = self
//        imagePicker.sourceType = .photoLibrary
//        imagePicker.modalPresentationStyle = .popover
//
//        let photoAuthorizationStatus = PHPhotoLibrary.authorizationStatus()
//        switch photoAuthorizationStatus {
//        case .authorized:
//            present(imagePicker, animated: true, completion: nil)
//            print("Access is granted by user")
//        case .notDetermined:
//            PHPhotoLibrary.requestAuthorization({
//                (newStatus) in
//                print("status is \(newStatus)")
//                if newStatus ==  PHAuthorizationStatus.authorized {
//                    /* do stuff here */
//                    //                    self.present(imagePicker, animated: true, completion: nil)
//                    print("success")
//                    let popOver = imagePicker.popoverPresentationController
//                    popOver?.sourceView = self.view
//                    popOver?.sourceRect = self.view.bounds
//                    self.show(imagePicker, sender: self)
//                }
//            })
//            print("It is not determined until now")
//        case .restricted:
//            print("User do not have access to photo album.")
//        case .denied:
//            print("User has denied the permission.")
//        }
//    }
//     func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//
//      guard  let image = info[.originalImage] as? UIImage  else {
//                print("imagePicker got Problem")
//                return
//            }
//                   //self.headImageView.image = image
//            dismiss(animated: true, completion: nil)
//    }
//
//}
