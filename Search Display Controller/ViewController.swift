//
//  ViewController.swift
//  Search Display Controller
//
//  Created by wiserkuo on 2015/5/6.
//  Copyright (c) 2015年 wiserkuo. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    var searchBar:UISearchBar?
    var sbdc:UISearchDisplayController?
    var stc:SearchTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(animated: Bool) {
        
        stc = SearchTableViewController()
        searchBar = UISearchBar()
        sbdc = UISearchDisplayController(searchBar: searchBar, contentsController: self)
        sbdc!.searchBar.sizeToFit()
        sbdc!.searchBar.frame.origin.y = self.topLayoutGuide.length
        self.view.addSubview(sbdc!.searchBar)
        sbdc?.delegate = stc
        sbdc?.searchResultsDataSource = stc
        sbdc?.searchResultsDelegate = stc
        sbdc?.searchResultsTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

