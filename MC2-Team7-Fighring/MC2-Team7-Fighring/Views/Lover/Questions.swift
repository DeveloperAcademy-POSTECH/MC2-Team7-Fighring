//
//  Questions.swift
//  MC2-Team7-Fighring
//
//  Created by 이용준의 Macbook on 2023/05/09.
//

import Foundation
var name = UserDefaults.standard.string(forKey: "loverName") ?? "❤️"

struct QuestionList {
    static var question = [
        "\(name)에게 나의 마음을 표현하는 걸 머뭇거린 적이 있나요?",
        "\(name)가(이) 나에게 거리를 둘까봐 걱정한 적이 있나요?",
        "\(name)와(과) 내가 서로 가까워지는 것이 편안한가요?",
        "나는 \(name)와(과)의 관계에 대해 걱정을 많이 하나요?",
        "\(name)가(이) 나에게 적극적으로 다가올 때 부담을 느끼나요?",
        "\(name)에게 관심을 주는 만큼 \(name)가(이) 나에게 관심을 가지지 않을까봐 걱정할 때가 있나요?",
        "\(name)가(이) 나에게 적극적으로 가까워지려고 할 때 불편한가요?",
        "나는 \(name)가(이) 나에 대한 사랑이 식을까봐 걱정이 되나요?",
        "나는 \(name)에게 내 마음을 여는 것이 어렵나요?",
        "내가 \(name)에게 호의를 보이는 만큼 \(name)도(이도) 그렇게 해주기를 바라나요?",
        "나는 \(name)와(과) 가까워지기를 원하지만, 생각을 바꾸어 그만 둘 때가 종종 있나요?",
        "내가 \(name)에게 너무 다가가서, 오히려 \(name)가(이) 거리를 두려고 한 적이 있나요?",
        "나는 \(name)가(이) 나와 너무 가까워졌을 때, 예민해지나요?",
        "내가 혼자가 될까봐 걱정한 적이 있나요?",
        "\(name)에게 나의 생각과 감정을 이야기하는 것이 편안한가요?",
        "내가 적극적으로 다가갈 때, \(name)는(은) 부담을 느낀다고 생각하나요?",
        "나는 \(name)와(과) 너무 가까워지는 것을 피하려고 하나요?",
        "나는 \(name)으로부터 사랑받고 있다는 것을 자주 확인받고 싶어하나요?",
        "나는 \(name)와(과) 친해지는 과정에 있어서, 큰 어려움이 없었나요?",
        "가끔 나는 \(name)에게 더 많은 애정과 헌신을 요구한다고 느끼나요?",
        "나는 \(name)에게 마음껏 의지하기 어렵나요?",
        "\(name)가(이) 나에게서 멀어지는 것에 대한 걱정이 없나요?",
        "\(name)와(과) 너무 가까워지는 것이 부담스럽나요?",
        "\(name)가(이) 나에게 관심을 보이지 않는다면 서운한가요?",
        "나는 \(name)에게 나의 모든 것을 이야기 하나요?",
        "\(name)가(이) 내가 원하는 만큼 가까워지고 싶지 않다고 생각될 때가 있나요?",
        "나는 주로 \(name)에게 내 문제와 고민을 공유하나요?",
        "나는 \(name)와(과) 연락이 잘 되지 않을 때 걱정스럽고 불안한가요?",
        "나는 \(name)에게 의지하는 것이 편안한가요?",
        "\(name)가(이) 내가 원하는 만큼 가깝지 않다 느낄 때 실망하게 되나요?",
        "나는 \(name)에게 위로, 조언 또는 도움을 구하는 것이 힘든가요?",
        "내가 필요로 할 때 \(name)가(이) 거절하면 서운한가요?",
        "내가 필요로 할 때 \(name)에게 의지한다면 도움이 되나요?",
        "\(name)가(이) 나에게 불만을 표현할 때, 나 자신이 크게 위축되나요?",
        "나는 위로와 확신을 비롯한 많은 일들을 \(name)에게 의지하는 편인가요?",
        "\(name)가(이) 나와 함께 하는 시간이 적을 때 기분이 안 좋은가요?",
        ]
}
