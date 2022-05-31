//
//  DetailViewController.swift
//  everytimeClone
//
//  Created by LrUCiA.
//

import UIKit

final class DetailViewController: UIViewController {

    private let texts = [
               """
               야 ㅋㅋㅋ 당연하지 학식 왜 먹냐? 후문 쪽에 맛집 댕많은데
               """,
               "난 괜찮던데 개인 취향아님?",
               "윗댓 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ 우리 학교 학생 맞냐?"
    ]
    
    
    private let commentWriteView = CommentWriteView()

    
    private let tableView = UITableView(frame: .zero, style: .grouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view.addSubview(self.tableView)
        self.view.addSubview(self.commentWriteView)
        self.tableView.setContentHuggingPriority(.defaultLow, for: .vertical)

        self.commentWriteView.setContentHuggingPriority(.defaultHigh, for: .vertical)
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.commentWriteView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
          
            self.commentWriteView.topAnchor.constraint(equalTo: self.tableView.bottomAnchor, constant: 8),
            self.commentWriteView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8),
            self.commentWriteView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8),
            self.commentWriteView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8)
            
        ])
        self.tableView.backgroundColor = .white
        
        self.navigationItem.titleView = NavigationTitleView()
        self.tableView.register(DetailContentsView.self, forHeaderFooterViewReuseIdentifier: "DetailContentsView")
        self.tableView.register(DetailCommentsViewCell.self, forCellReuseIdentifier: "DetailCommentsViewCell")
        self.tableView.reloadData()
        self.tableView.separatorStyle = .none
        self.tableView.layoutIfNeeded()

        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "more_title"), style: .plain, target: self, action: nil)
    }
    
    

}

extension DetailViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.texts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCommentsViewCell", for: indexPath) as! DetailCommentsViewCell
        cell.setupData(text: self.texts[indexPath.item])
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "DetailContentsView") as! DetailContentsView
        return view
    }
    
}
