//
//  ViewController
//  TestFullScreenPlugin
//
//  Created by Mahesh Patil on 07/04/20.
//  Copyright © 2020 Mahesh Patil. All rights reserved.
//

import UIKit
import TestFullScreenPluginPlugin
import ZappPlugins

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func createPluginButtonClicked(_ sender: Any) {
        let dict = Dictionary(dictionaryLiteral: ("foo", "bar"))
        if let model = ZPPluginManager.pluginModels()?.first {
            let pluginAdapter = FullScreenPlugin(pluginModel:model,
                                                 screenModel: ZLScreenModel(object: dict),
                                                 dataSourceModel: nil)
            if let vc = pluginAdapter?.createScreen() {
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

}

