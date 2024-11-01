#import "colors.typ" : KUPC_GREEN, PALE_RED
#import "problem_info.typ" : constructTitle
#import "problems.typ" : contest_problems
#import "typst-svg-emoji/lib.typ" : *

#import "descriptions/A.typ": *
#import "descriptions/B.typ": *
#import "descriptions/C.typ": *
#import "descriptions/D.typ": *
#import "descriptions/E.typ": *
#import "descriptions/F.typ": *
#import "descriptions/G.typ": *
#import "descriptions/H.typ": *
#import "descriptions/I.typ": *
#import "descriptions/J.typ": *
#import "descriptions/K.typ": *
#import "descriptions/L.typ": *

#let mono(s, color: black) = {text(font: "Inconsolata", fill: color)[#s]}
#let bf(s) = {text(weight: "bold")[#s]}

// 줄바꿈은 #linebreak()를 중간에 넣으면 됩니다.
// 페이지 넘김은 문제 내부에서 ()를 새로 만들어 주세요.
// monospace 문자열은 #mono("abc")와 같이 쓸 수 있습니다.
// 미리 정의되지 않은 operation의 경우에는 #math.op("MEX")와 같이 쓰면 됩니다. 대부분은 정의돼 있으니 그냥 $cos$ 와 같이 쓰면 됩니다.
// 시간복잡도는 $cal(O)(N log N)$ 와 같이 써주세요. log가 자체적으로 함수가 있습니다.
// 이모지는 그냥 넣으면 됩니다. 지원하지 않는 이모지는 깨집니다. 이모지는 https://github.com/polazarus/typst-svg-emoji 를 사용했습니다.
// 그래프도 작성 가능합니다. https://www.graphviz.org/docs/graph/ 를 참고해서 ```render <여기에 그래프를 작성하세요>```

#let cell(num, color: black, fill: none, stroke: none) = {
  rect(
    height: 50pt, width: 50pt,
    stroke: stroke,
    fill: fill,
  )[#align(center + horizon)[#text(fill: color)[#num]]];
}

#let descriptions = (
  // 2A
    A_desc.at(0),
    B_desc.at(0),
    C_desc.at(0),
    D_desc.at(0),
    E_desc.at(0),
    F_desc.at(0),
    G_desc.at(0),
    H_desc.at(0),
    I_desc.at(0),
    J_desc.at(0),
    K_desc.at(0),
    L_desc.at(0),
)


#let create_page(index) = {

  set list(marker: text(fill:KUPC_GREEN)[✓])

  for pg in descriptions.at(index) {
    [
      #constructTitle(contest_problems.at(index), size: 2em, bookmark:false)
      #v(5em)
    ]
  for desc in pg {
    set text(size: 2em)
    pad(left: -1.5em)[#desc]
    v(0em);
  }
    pagebreak(weak: true)
  }
}

