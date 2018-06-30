//
//  FordLabsMembersViewModel.swift
//  TeamMembers
//
//  Created by Arunn Karthick on 29/06/18.
//  Copyright © 2018 Arunn Karthick. All rights reserved.
//

import RxSwift
import RxCocoa

class FordLabsMembersViewModel {
    let members: BehaviorRelay<[Members]> = BehaviorRelay<[Members]>(value: [])
    
    private var membersService: MembersAPI = MembersAPI()
    
    init() {
        self.members.accept([membersService.getMembers()])
    }
    
//    convenience init(membersService: MembersAPI = ) {
//        self.init(membersService: membersService)
//        self.membersService = membersService
//    }
    
//    public func getMembers() {
//        members = membersService.getMembers()
//    }
}
