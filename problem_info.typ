#import "colors.typ" : *
#import "abstractions.typ" : pick_color

#let mono(s, color: black) = {text(font: "Incolsolata", fill: color)[#s]}

#let constructTitle(problem, size: 2.5em, bookmark: true) = {
  let title = problem.index;
  
  if (bookmark == true) {
      heading()[#text(title, weight: 600, fill:KUPC_GREEN, size:size)#text(". " + problem.title, weight: 400, fill:KUPC_GREEN, size:size)]
  }
  else {
    set text(size: size)
    text(title, weight: 600, fill:KUPC_GREEN)
    text(". " + problem.title, weight: 400, fill:KUPC_GREEN)
  }
  text("")
}

#let printDetails(problem, size: 1.5em) = {
  set text(size: 1.5em)
  v(-1em)
  text(font: "Inconsolata")[#problem.algorithms]
  linebreak()
  v(0em)
  text[출제진 의도 - #text(weight: 600, problem.difftext, fill: pick_color(tier: problem.diff))]
}

#let printStat(problem) = {
  set text(size: 2em)
  let submit_count = problem.stat.at(1)
  let ac_count = problem.stat.at(0)
  
  let rate_count = submit_count
  if (submit_count == 0) {rate_count = 1}
  let ac_rate = calc.round(ac_count / rate_count * 100, digits: 2);

  let first_ac = problem.first_ac.at(0)
  let ac_at = problem.first_ac.at(1)

  list(marker: [#text("🦆", size:1.2em)],
    text[제출 #submit_count\회, 정답 #ac_count\명 (정답률 #ac_rate\%)#v(0.5em)],
  )
  
  list(marker: [#text("🥇", size:1.2em)],
    [#if (ac_count != 0) { [#first_ac, #ac_at\분] } else {"─"}]
  )
}

#let printSetter(problem) = {
  set text(size: 2em)
  let setter_names = problem.setter.map(setter => {
    text(setter.at(0) + " ")
    text(setter.at(1), size: 0.8em, font: "Inconsolata", fill: gray)
  }).join(", ")

  v(2em)
  list(marker: [#text("📣", size:1.2em)],
    [#setter_names]
  )
  v(1em)
}

#let info(problem) = {

  pad(left: -1em)[

    #v(1em)
    
    #pad(left: 0em)[
      #constructTitle(problem)
      #linebreak()
      #v(1em)
      #printDetails(problem)
      #v(5em)
    ]

    #pad(left: -2em)[
      #printStat(problem)
      #printSetter(problem)
    ]
  ]
  pagebreak()

  
}