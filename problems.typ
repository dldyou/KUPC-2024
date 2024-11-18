#let statistics = json("./statistics/data.json")

#let raw_problems = (
  // 문제 번호, Title, Difficulty, 예상 티어 "bsgpdr" 중 하나, 출제진 튜플 - 1명인 경우 뒤에 콤마 붙여야함
  // 정해 알고리즘, (AC, submissions),  first solve(이름, 시간),
    ("A", "구구단표", "Beginner", "b", 
                (("권순호", "yookwi"),), "bruteforce", 
                (int(statistics.at("correct").at("A")), int(statistics.at("total").at("A"))), (statistics.at("fs").at("A").at("name"), statistics.at("fs").at("A").at("time"))),
    ("B", "홀수로 나눠라! 짝수로 나눠라!", "Easy", "b", 
                (("윤찬규", "dldyou"),), "greedy", 
                (int(statistics.at("correct").at("B")), int(statistics.at("total").at("B"))), (statistics.at("fs").at("B").at("name"), statistics.at("fs").at("B").at("time"))),
    ("C", "다이얼 룰렛", "Normal", "s", 
                (("윤찬규", "dldyou"),), "bruteforce, greedy", 
                (int(statistics.at("correct").at("C")), int(statistics.at("total").at("C"))), (statistics.at("fs").at("C").at("name"), statistics.at("fs").at("C").at("time"))),

    ("D", "숫자 POP", "Normal", "s", 
                (("윤찬규", "dldyou"),), "bruteforce", 
                (int(statistics.at("correct").at("D")), int(statistics.at("total").at("D"))), (statistics.at("fs").at("D").at("name"), statistics.at("fs").at("D").at("time"))),

    ("E", "방벽 게임", "Normal", "s", 
                (("권순호", "yookwi"),), "ad_hoc", 
                (int(statistics.at("correct").at("E")), int(statistics.at("total").at("E"))), (statistics.at("fs").at("E").at("name"), statistics.at("fs").at("E").at("time"))),

    ("F", "십자 찾기", "Normal", "s", 
                (("윤찬규", "dldyou"),), "prefix_sum", 
                (int(statistics.at("correct").at("F")), int(statistics.at("total").at("F"))), (statistics.at("fs").at("F").at("name"), statistics.at("fs").at("F").at("time"))),

    ("G", "방공호 만들기", "Normal", "g", 
                (("윤찬규", "dldyou"),), "ad_hoc, math", 
                (int(statistics.at("correct").at("G")), int(statistics.at("total").at("G"))), (statistics.at("fs").at("G").at("name"), statistics.at("fs").at("G").at("time"))),

    ("H", "격자 연결하기", "Normal", "g", 
                (("윤찬규", "dldyou"),), "dynamic_programming", 
                (int(statistics.at("correct").at("H")), int(statistics.at("total").at("H"))), (statistics.at("fs").at("H").at("name"), statistics.at("fs").at("H").at("time"))),

    ("I", "우선순위 큐와 시뮬레이션", "Normal", "g", 
                (("권순호", "yookwi"),), "binary_search",
                (int(statistics.at("correct").at("I")), int(statistics.at("total").at("I"))), (statistics.at("fs").at("I").at("name"), statistics.at("fs").at("I").at("time"))),

    ("J", "배열 만들기", "Normal", "g", 
                (("권순호", "yookwi"),), "constructive, greedy", 
                (int(statistics.at("correct").at("J")), int(statistics.at("total").at("J"))), (statistics.at("fs").at("J").at("name"), statistics.at("fs").at("J").at("time"))),
    
    ("K", "순열과 증가수열", "Hard", "g", 
                (("이승엽", "delena0702"),), "ad_hoc, math, combinatorics", 
                (int(statistics.at("correct").at("K")), int(statistics.at("total").at("K"))), (statistics.at("fs").at("K").at("name"), statistics.at("fs").at("K").at("time"))),
    
    ("L", "완벽한 도시 설계", "Challenging", "p", 
                (("이승엽", "delena0702"),), "graph_theory", 
                (int(statistics.at("correct").at("L")), int(statistics.at("total").at("L"))), (statistics.at("fs").at("L").at("name"), statistics.at("fs").at("L").at("time"))),
)

#let contest_problems = raw_problems.map( problem => {
  (
    index: problem.at(0),
    title: problem.at(1),
    difftext: problem.at(2),
    diff: problem.at(3),
    setter: problem.at(4),
    algorithms: problem.at(5),
    stat: problem.at(6),
    first_ac: problem.at(7),
  )
})
