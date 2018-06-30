//
//  MembersTableViewCell.swift
//  RxSwiftMembers
//
//  Created by Arunn Karthick on 29/06/18.
//  Copyright © 2018 Arunn Karthick. All rights reserved.
//

import UIKit

class MembersTableViewCell: UITableViewCell {

  @IBOutlet weak var labelName: UILabel!
  @IBOutlet weak var labelEmoji: UILabel!
  @IBOutlet weak var labelTalent: UILabel!

  func update(member: Members){
    self.labelName.text = member.name
    self.labelTalent.text = member.talent
    self.labelEmoji.isHidden = true
//    self.labelEmoji.text = member.imageURL
  }

}
