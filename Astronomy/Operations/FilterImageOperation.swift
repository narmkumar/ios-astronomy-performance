//
//  FilterImageOperation.swift
//  Astronomy
//
//  Created by Niranjan Kumar on 12/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class FilterImageOperation: Operation {
    
    let fetchOperation: FetchPhotoOperation
    private(set) var image: UIImage?
    
    init(fetchOperation: FetchPhotoOperation) {
        self.fetchOperation = fetchOperation
    }
    
    override func main() {
        if let data = fetchOperation.imageData,
            let image = UIImage(data: data) {
            
            self.image = image.filtered()
            NSLog("Finished filtering image")
        }
        
        
        
    }
}
