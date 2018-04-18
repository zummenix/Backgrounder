//
//  PhotoService.swift
//  Backgrounder
//
//  Created by Aleksey Agapov on 18/04/2018.
//  Copyright © 2018 Alex Agapov. All rights reserved.
//

import Foundation
import Photos

class PhotoService {
    enum PhotoServiceError: Error {
        case
        unknownError,
        describefulError
    }
    
    func tryToSave(image: UIImage, completion: ((Bool) -> Void)? = nil) {
        func save() {
            PHPhotoLibrary.shared().performChanges({
                PHAssetChangeRequest.creationRequestForAsset(from: image)
            }, completionHandler: { (isSuccess, _) in
                if isSuccess {
                    completion?(true)
                } else {
                    completion?(false)
                }
            })
        }

        switch PHPhotoLibrary.authorizationStatus() {
        case .authorized:
            save()
        case .denied, .restricted:
            completion?(false)
        default:
            PHPhotoLibrary.requestAuthorization { (status) in
                switch status {
                case .authorized:
                    save()
                default:
                    completion?(false)
                }
            }
        }
    }
}
