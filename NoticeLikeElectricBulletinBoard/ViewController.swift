//
//  ViewController.swift
//  NoticeLikeElectricBulletinBoard
//
//  Created by Takuya Aso on 2020/03/16.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var announceLabel: UILabel!
    @IBOutlet weak var leadingLayoutConstraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.setUpAnnounce()
    }

    private func setUpUI() {
        self.navigationItem.title = "NoticeLikeElectricBulletinBoard"
        self.leadingLayoutConstraint.constant = self.view.frame.width
        self.announceLabel.text = "東西線は、強風の影響で１６日午前９時から東陽町－西船橋駅間の運転を見合わせ、中野－東陽町駅間での折り返し運転を実施しています。"
    }

    private func setUpAnnounce() {
        let intrerval = self.announceLabel.frame.width > self.view.frame.width ?
            10.0 * self.announceLabel.frame.width / self.view.frame.width : 10.0

        self.leadingLayoutConstraint.constant -= self.announceLabel.frame.width * 2

        UIView.animate(withDuration: TimeInterval(intrerval), delay: 0.0, options: [.repeat, .curveLinear], animations: {
            self.announceLabel.frame.origin.x -= self.announceLabel.frame.width * 2
        }, completion: nil)
    }
}
