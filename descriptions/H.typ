#let cell(num, color: black, fill: none) = {
    rect(
        height: 50pt, 
        width: 50pt, 
        stroke: none, 
        fill: fill, 
    )[#align(center + horizon)[#text(fill: color, size: 18pt)[#num]]];
};

#let H_desc = (
    (
        (
            [- 두 격자를 선택하여 최단 경로는 어떤 모양으로 생길까요?],
            [- 좌상 -> 우하, 우상 -> 좌하 로 가는 두 가지 경로만 존재합니다.],
            [- $(r, c)$까지 보았을 때, 얻을 수 있는 최대 점수를 각각의 상황에서 구해봅시다.],
            [
                #align(center)[
                    #table( 
                        columns: 4, 
                        stroke: gray + 0.5pt, 
                        inset: 0pt,

                        cell(-1), cell(-3), cell(-2), cell(-1),
                        cell(2), cell(1), cell(-3), cell(6),
                        cell(4), cell(5), cell(7), cell(-4),
                        cell(-4), cell(-6), cell(-3), cell(-3),
                    )
                ]
            ],
        ),
        (
            [- 좌상 -> 우하 로 가는 경로부터 봅시다.],
            [- $(1, 1)$까지 보았을 때의 최대 점수는 -1점입니다.],
            [
                #align(right)[
                    #table(
                        columns: 3, 
                        stroke: none, 
                        inset: 0pt,
                        column-gutter: 100pt,


                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1),
                            cell(2), cell(1), cell(-3), cell(6),
                            cell(4), cell(5), cell(7), cell(-4),
                            cell(-4), cell(-6), cell(-3), cell(-3),
                        ), 
                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1, fill: yellow), cell(-3, fill: rgb("999")), cell(-2, fill: rgb("555")), cell(-1, fill: rgb("555")),
                            cell(2, fill: rgb("999")), cell(1, fill: rgb("555")), cell(-3, fill: rgb("555")), cell(6, fill: rgb("555")),
                            cell(4, fill: rgb("555")), cell(5, fill: rgb("555")), cell(7, fill: rgb("555")), cell(-4, fill: rgb("555")),
                            cell(-4, fill: rgb("555")), cell(-6, fill: rgb("555")), cell(-3, fill: rgb("555")), cell(-3, fill: rgb("555")),
                        )
                    )
                ]
            ],
        ),
        (
            [- 좌상 -> 우하 로 가는 경로부터 봅시다.],
            [- $(1, 1)$부터 거리가 1인 위치까지 보았을 때의 최대 점수는 다음과 같습니다.],
            [
                #align(right)[
                    #table(
                        columns: 3, 
                        stroke: none, 
                        inset: 0pt,
                        column-gutter: 100pt,


                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1),
                            cell(2), cell(1), cell(-3), cell(6),
                            cell(4), cell(5), cell(7), cell(-4),
                            cell(-4), cell(-6), cell(-3), cell(-3),
                        ), 
                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3, fill: yellow), cell(-2, fill: rgb("999")), cell(-1, fill: rgb("555")),
                            cell(2, fill: yellow), cell(1, fill: rgb("999")), cell(-3, fill: rgb("555")), cell(6, fill: rgb("555")),
                            cell(4, fill: rgb("999")), cell(5, fill: rgb("555")), cell(7, fill: rgb("555")), cell(-4, fill: rgb("555")),
                            cell(-4, fill: rgb("555")), cell(-6, fill: rgb("555")), cell(-3, fill: rgb("555")), cell(-3, fill: rgb("555")),
                        )
                    )
                ]
            ],
        ),
        (
            [- 좌상 -> 우하 로 가는 경로부터 봅시다.],
            [- 거리가 2인 위치까지 보았을 때의 최대 점수는 다음과 같습니다.],
            [
                #align(right)[
                    #table(
                        columns: 3, 
                        stroke: none, 
                        inset: 0pt,
                        column-gutter: 100pt,


                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1),
                            cell(2), cell(1), cell(-3), cell(6),
                            cell(4), cell(5), cell(7), cell(-4),
                            cell(-4), cell(-6), cell(-3), cell(-3),
                        ), 
                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2, fill: yellow), cell(-1, fill: rgb("999")),
                            cell(2), cell(3, fill: yellow), cell(-3, fill: rgb("999")), cell(6, fill: rgb("555")),
                            cell(6, fill: yellow), cell(5, fill: rgb("999")), cell(7, fill: rgb("555")), cell(-4, fill: rgb("555")),
                            cell(-4, fill: rgb("999")), cell(-6, fill: rgb("555")), cell(-3, fill: rgb("555")), cell(-3, fill: rgb("555")),
                        )
                    )
                ]
            ],
        ),
        (
            [- 좌상 -> 우하 로 가는 경로부터 봅시다.],
            [- 거리가 3인 위치까지 보았을 때의 최대 점수는 다음과 같습니다.],
            [
                #align(right)[
                    #table(
                        columns: 3, 
                        stroke: none, 
                        inset: 0pt,
                        column-gutter: 100pt,


                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1),
                            cell(2), cell(1), cell(-3), cell(6),
                            cell(4), cell(5), cell(7), cell(-4),
                            cell(-4), cell(-6), cell(-3), cell(-3),
                        ), 
                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1, fill: yellow),
                            cell(2), cell(3), cell(0, fill: yellow), cell(6, fill: rgb("999")),
                            cell(6), cell(11, fill: yellow), cell(7, fill: rgb("999")), cell(-4, fill: rgb("555")),
                            cell(2, fill: yellow), cell(-6, fill: rgb("999")), cell(-3, fill: rgb("555")), cell(-3, fill: rgb("555")),
                        )
                    )
                ]
            ],
        ),
        (
            [- 좌상 -> 우하 로 가는 경로부터 봅시다.],
            [- 거리가 4인 위치까지 보았을 때의 최대 점수는 다음과 같습니다.],
            [
                #align(right)[
                    #table(
                        columns: 3, 
                        stroke: none, 
                        inset: 0pt,
                        column-gutter: 100pt,


                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1),
                            cell(2), cell(1), cell(-3), cell(6),
                            cell(4), cell(5), cell(7), cell(-4),
                            cell(-4), cell(-6), cell(-3), cell(-3),
                        ), 
                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1),
                            cell(2), cell(3), cell(0), cell(6, fill: yellow),
                            cell(6), cell(11), cell(18, fill: yellow), cell(-4, fill: rgb("999")),
                            cell(2), cell(5, fill: yellow), cell(-3, fill: rgb("999")), cell(-3, fill: rgb("555")),
                        )
                    )
                ]
            ],
        ),
        (
            [- 좌상 -> 우하 로 가는 경로부터 봅시다.],
            [- 거리가 5인 위치까지 보았을 때의 최대 점수는 다음과 같습니다.],
            [
                #align(right)[
                    #table(
                        columns: 3, 
                        stroke: none, 
                        inset: 0pt,
                        column-gutter: 100pt,


                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1),
                            cell(2), cell(1), cell(-3), cell(6),
                            cell(4), cell(5), cell(7), cell(-4),
                            cell(-4), cell(-6), cell(-3), cell(-3),
                        ), 
                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1),
                            cell(2), cell(3), cell(0), cell(6),
                            cell(6), cell(11), cell(18), cell(14, fill: yellow),
                            cell(2), cell(5), cell(15, fill: yellow), cell(-3, fill: rgb("999")),
                        )
                    )
                ]
            ],
        ),
        (
            [- 거리가 6인 위치까지 보았을 때의 최대 점수는 다음과 같습니다.],
            [- 좌상 -> 우하 로 가는 경로에서의 최대 점수는 18점입니다.],
            [- 우상 -> 좌하 에서도 진행해보면 최대 점수가 19점인 것을 알 수 있습니다.],
            [
                #align(right)[
                    #table(
                        columns: 3, 
                        stroke: none, 
                        inset: 0pt,
                        column-gutter: 100pt,


                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1),
                            cell(2), cell(1), cell(-3), cell(6),
                            cell(4), cell(5), cell(7), cell(-4),
                            cell(-4), cell(-6), cell(-3), cell(-3),
                        ), 
                        table( 
                            columns: 4, 
                            stroke: gray + 0.5pt, 
                            inset: 0pt,

                            cell(-1), cell(-3), cell(-2), cell(-1),
                            cell(2), cell(3), cell(0), cell(6),
                            cell(6), cell(11), cell(18, fill: green), cell(14),
                            cell(2), cell(5), cell(15), cell(12),
                        )
                    )
                ]
            ],
        ),
    ),
)