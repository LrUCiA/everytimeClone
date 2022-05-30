//
//  BoardTableViewController.swift
//  everytimeClone
//
//  Created by LrUCiA.
//

import UIKit

class BoardTableViewController: UITableViewController {

    private let texts = [
        """
        오늘 혹시나 하고 점심 먹으러 구내식당 갔는데 역시나더라.
        도서관 쪽은 괜찮던데 왜 학관 쪽에만 그런지 등록금 어따 썼냐?
        """,
        "오늘 날씨가 너무 좋아서 수업 걍 째버림. ㅁㅌㅊ?",
        "이번에 아이유 신곡 들어봄? 난 하루종일 이거만 듣는중",
        """
        하... 하루만 과에서 꼴등하고 싶다.
        .
        .
        .
        매일 꼴등이니까 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
        """,
        "여러분 시험 모두 잘 보게 되는 주문 걸어드림.",
        "어제 ㅁㅁ대 축제 미쳤던데 우리 학교는 왜 저렇게 못하냐? 너무 비교되네",
        """
        후.. 너넨 이거 피지마라
        .
        .
        .
        책피니까 머리 아프네
        """
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = ""
        self.navigationItem.titleView = NavigationTitleView()
        self.tableView.separatorStyle = .none // 줄 격자 삭제
        self.tableView.register(BoardTableViewCell.self, forCellReuseIdentifier: "BoardCell")
        self.tableView.reloadData()
        
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "more_title"), style: .plain, target: self, action: nil)
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return texts.count
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoardCell", for: indexPath) as! BoardTableViewCell
        cell.setData(text: texts[indexPath.item])
        return cell
    }

}
