//
//  WeakHandler.swift
//  YTSwiftyPlayer
//
//  Created by Alex on 2019.08.26.
//

import WebKit

class WeakHandler: NSObject, WKScriptMessageHandler {
    private weak var handler: WKScriptMessageHandler?

    init(_ realHandler: WKScriptMessageHandler) {
        handler = realHandler
        super.init()
    }

    func userContentController(_ userContentController: WKUserContentController,
                               didReceive message: WKScriptMessage) {
        handler?.userContentController(userContentController,
                                       didReceive: message)
    }
}
