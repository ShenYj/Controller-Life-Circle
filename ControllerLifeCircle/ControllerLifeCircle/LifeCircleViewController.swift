//
//  LifeCircleViewController.swift
//  ControllerLifeCircle
//
//  Created by ShenYj on 2021/03/16.
//
//  Copyright (c) 2021 ShenYj <shenyanjie123@foxmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit

extension LifeCircleViewController: Logable { }
public class LifeCircleViewController: UIViewController {
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        
        /**
         
         public class let didEnterBackgroundNotification: NSNotification.Name
         public class let willEnterForegroundNotification: NSNotification.Name
         public class let didFinishLaunchingNotification: NSNotification.Name
         public class let didBecomeActiveNotification: NSNotification.Name
         public class let willResignActiveNotification: NSNotification.Name
         public class let willTerminateNotification: NSNotification.Name

         public class let significantTimeChangeNotification: NSNotification.Name
         */
        
        NotificationCenter.default
            .addObserver(self, selector: #selector(didFinishLaunchingNotification(notification:)), name: UIApplication.didFinishLaunchingNotification, object: nil)
        
        NotificationCenter.default
            .addObserver(self, selector: #selector(willEnterForegroundNotification(notification:)), name: UIApplication.willEnterForegroundNotification, object: nil)
        
        NotificationCenter.default
            .addObserver(self, selector: #selector(didBecomeActiveNotification(notification:)), name: UIApplication.didBecomeActiveNotification, object: nil)
        
        NotificationCenter.default
            .addObserver(self, selector: #selector(willResignActiveNotification(notification:)), name: UIApplication.willResignActiveNotification, object: nil)
        
        NotificationCenter.default
            .addObserver(self, selector: #selector(didEnterBackgroundNotification(notification:)), name: UIApplication.didEnterBackgroundNotification, object: nil)
        
        NotificationCenter.default
            .addObserver(self, selector: #selector(willTerminateNotification(notification:)), name: UIApplication.willTerminateNotification, object: nil)
        
        log()
    }
    
    public override func loadView() {
        super.loadView()
        log()
    }
    
    public override func loadViewIfNeeded() {
        super.loadViewIfNeeded()
        log()
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        log()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        log()
    }
    
    public override func viewLayoutMarginsDidChange() {
        super.viewLayoutMarginsDidChange()
        log()
    }
    
    public override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        log()
    }
    
    public override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        log(ex: "==> iOS 11.0+ 可以获取到 view.safeAreaInsets ")
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        log()
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        log()
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        log()
    }
    
    public override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        log()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        log()
    }
}


public extension LifeCircleViewController {
    
    @objc func didFinishLaunchingNotification(notification: Notification) {
        log()
    }
    
    @objc func didBecomeActiveNotification(notification: Notification) {
        log()
    }
    
    @objc func willResignActiveNotification(notification: Notification) {
        log()
    }
    
    @objc func willTerminateNotification(notification: Notification) {
        log()
    }
    
    @objc func willEnterForegroundNotification(notification: Notification) {
        log()
    }
    @objc func didEnterBackgroundNotification(notification: Notification) {
        log()
    }
}
