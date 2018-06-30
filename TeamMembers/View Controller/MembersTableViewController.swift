//
//  MembersTableViewController.swift
//  TeamMembers
//
//  Created by Arunn Karthick on 29/06/18.
//  Copyright © 2018 Arunn Karthick. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MembersTableViewController: UITableViewController {

    private let bag = DisposeBag()
    private let viewModel: FordLabsMembersViewModel = FordLabsMembersViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = nil
        self.tableView.dataSource = nil
        // Do any additional setup after loading the view, typically from a nib.
        
        bindUI()
    }

    private func bindUI() {
        
        viewModel.members
            .asDriver(onErrorJustReturn: [])
            .drive(self.tableView.rx.items(cellIdentifier: "MemberTableCell",
                                           cellType: MembersTableViewCell.self)){(_, member: Members, cell) in cell.update(member: member) }
            .disposed(by: bag)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

