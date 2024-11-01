#let raw_problems = (
  // 문제 번호, Title, Difficulty, 예상 티어 "bsgpdr" 중 하나, 출제진 튜플 - 1명인 경우 뒤에 콤마 붙여야함
  // 정해 알고리즘, (AC, submissions),  first solve(이름, 시간),
    ("A", "구구단표", "Beginner", "b", 
                (("권순호", "yookwi"),), "bruteforce", 
                (0, 0), ("-", 0)),
    ("B", "홀수로 나눠라! 짝수로 나눠라!", "Easy", "b", 
                (("윤찬규", "dldyou"),), "greedy", 
                (0, 0), ("-", 0)),

    ("C", "다이얼 룰렛", "Normal", "s", 
                (("윤찬규", "dldyou"),), "bruteforce, greedy", 
                (0, 0), ("-", 0)),

    ("D", "숫자 POP", "Normal", "s", 
                (("윤찬규", "dldyou"),), "bruteforce", 
                (0, 0), ("-", 0)),

    ("E", "방벽 게임", "Normal", "s", 
                (("권순호", "yookwi"),), "ad_hoc", 
                (0, 0), ("-", 0)),

    ("F", "십자 찾기", "Normal", "s", 
                (("윤찬규", "dldyou"),), "prefix_sum", 
                (0, 0), ("-", 0)),

    ("G", "방공호 만들기", "Normal", "g", 
                (("윤찬규", "dldyou"),), "ad_hoc, math", 
                (0, 0), ("-", 0)),

    ("H", "격자 연결하기", "Normal", "g", 
                (("윤찬규", "dldyou"),), "dynamic_programming", 
                (0, 0), ("-", 0)),

    ("I", "우선순위 큐와 시뮬레이션", "Normal", "g", 
                (("권순호", "yookwi"),), "binary_search",
                (0, 0), ("-", 0)),

    ("J", "배열 만들기", "Normal", "g", 
                (("권순호", "yookwi"),), "constructive, greedy", 
                (0, 0), ("-", 0)),
    
    ("K", "순열과 증가수열", "Hard", "g", 
                (("이승엽", "delena0702"),), "ad_hoc, math, combinatorics", 
                (0, 0), ("-", 0)),
    
    ("L", "완벽한 도시 설계", "Challenging", "p", 
                (("이승엽", "delena0702"),), "graph_theory", 
                (0, 0), ("-", 0)),
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
