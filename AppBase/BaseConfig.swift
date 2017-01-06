//
//  Copyright © 2016年 Jack. All rights reserved.
//

//import XCGLogger

public class BaseConfig {
    required public init() {
        loadSettings()
    }

    func loadSettings() {
//        #if DEV
//            log.info("--dev")
//        #elseif BATA
//            log.info("--bata")
//        #else
//            log.info("--re")
//        #endif
    }
}

var isDebug = true

func log(items: Any...) {
    isDebug ? print(items): print()
}
