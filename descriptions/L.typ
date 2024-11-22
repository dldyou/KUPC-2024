#let L_desc = (
    (
        (
            [
                #align(center, block[
                    #image("../images/L_1.png", height: 35%)
                ])
            ],
            [- 문제의 요구사항을 만족시키고, 어떤 도시에서도 모든 도시로 갈 수 있도록 도시를 설계하기 위해서는 원형으로 구성해야 합니다.],
            [- 모든 도시에 들어오는 도로가 단 한 개가 되고, 모든 노드가 연결되어 있으면 됩니다.],
            [- 도로의 목적지를 변경하는 것이 아니라, 도로를 끊고 다시 연결하는 방법으로 생각해 봅시다!],
        ),
        (
            [
                #align(center, block[
                    #image("../images/L_2.png", height: 31%)
                ])
            ],
            [- 그래프를 모두 직선 형태로 분리한다면 다시 연결했을 때, 원형으로 구성할 수 있습니다.],
            [- 따라서 그래프를 직선으로 만들 수 있는 최소 도로 제거 횟수를 구하면 정답을 구할 수 있습니다.],
            [- 예외적으로, 주어진 그래프가 이미 원형 그래프라면 도로를 분리하지 않는 것이 더 적은 횟수로 만들 수 있습니다. ($0$회)],
        ),
        (
            [
                #align(center, block[
                    #image("../images/L_3.png", height: 40%)
                ])
            ],
            [- 그래프의 연결된 컴포넌트들에 대해 생각해 봅시다.],
            [- 각 컴포넌트들은 노드의 개수와 간선의 개수가 같습니다.],
        ),
        (
            [
                #align(center, block[
                    #image("../images/L_3.png", height: 40%)
                ])
            ],
            [- 즉, 사이클이 반드시 한 개 이상 있습니다.],
            [(트리에 한 개의 간선이 추가된다고 생각하면 편합니다.)],
            [- 각 컴포넌트들은 다음의 방법으로 도로를 최소 횟수로 제거할 수 있습니다.],
        ),
        (
            [1. 컴포넌트의 사이클에 indegree가 $2$ 이상인 노드가 있는 경우],
            [- indegree가 $2$ 이상인 노드 중 하나를 선택합니다.],
            [- 그 노드에 들어오는 간선 중, 사이클에 구성되는 간선을 제거합니다.],
            [- 남은 그래프는 트리가 되므로, indegree가 $2$ 이상인 모든 노드에 대해서 아무 순서대로 들어오는 간선을 한 개가 남을 때까지 제거합니다.],
            [- 최소 간선 제거 횟수는 $sum_(v in V) max \([v "의 indegree"] - 1, 0\)$ 입니다.],
        ),
        (
            [
                #align(center, block[
                    #image("../images/L_4.png")
                ])
            ],
        ),
        (
            [
                #align(center, block[
                    #image("../images/L_5.png", height: 40%)
                ])
            ],
            [2. 컴포넌트의 사이클에 indegree가 $2$ 이상인 노드가 없는 경우],
            [- 컴포넌트 전체가 원형 그래프일 수밖에 없습니다.],
            [- 직선으로 수정하기 위해 임의의 간선 한 개를 자릅니다.],
            [- 최소 간선 제거 횟수는 $1$ 입니다.],
        ),
    ),
)