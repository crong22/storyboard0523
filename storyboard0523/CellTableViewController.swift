//
//  CellTableViewController.swift
//  storyboard0523
//
//  Created by 여누 on 5/23/24.
//

import UIKit

class CellTableViewController: UITableViewController {
    @IBOutlet var mainTitleLabel: UILabel!
    //딕셔너리로 섹션의 이름 저장
    var list = [["공지사항", "실험실", "버전 정보"],["개인/보안", "알림", "채팅", "멀티프로필"],["고객센터/정책보안"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTitleLabel.text = "설정"
        mainTitleLabel.textColor = .white
        mainTitleLabel.font = .boldSystemFont(ofSize: 17)
        mainTitleLabel.textAlignment = .center

    }
    // 1. 섹션 개수 (전체 설정, 개인 설정, 기타)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    // 2. 섹션 설정
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "전체 설정"
        }else if section == 1{
            return "개인 설정"
        }else {
            return "기타"
        }
    }
    // 3. 셀의 개수
    // 전체 설정, 개인 설정, 기타
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return list[0].count
        }else if section == 1{
            return list[1].count
        }else{
            return list[2].count
        }
    }
    
    // 4. 셀의 높이를 설정
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80 // 권장하는높이
    }
    
    // 5. 셀의 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //  "wooCell"을 사용
        let cell = tableView.dequeueReusableCell(withIdentifier: "wooCell")!
        print("indexPath.section \(indexPath.section)")
        // text에 list의 indexPath.row번 째, 값을 넣어준다.
        if indexPath.section == 0 {
            cell.textLabel?.text = list[0][indexPath.row]
            return cell
        }else if indexPath.section == 1{
            cell.textLabel?.text = list[1][indexPath.row]
            return cell
        }else{
            cell.textLabel?.text = list[2][indexPath.row]
            return cell
                }
        
    }
        }

        

        

