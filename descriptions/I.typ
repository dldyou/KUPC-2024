#let I_desc = (
    (
        (
            [- 문제에서 주어진 큐의 성질을 파악해봅시다.],
            [- 쿼리는 모든 원소에 $A_i$를 더하고 $K$로 나눈 나머지를 취하고 있습니다.],
            [- 그 후 큐에 들어있는 원소 중에서 최댓값을 출력합니다.],
            [- 현재의 top $T$에서 $x$를 더했을 때의 값이 $K$보다 작다면 top은 $T + x$입니다.],
            [- $K$보다 크다면 top의 가장 유력한 후보는 $T$ 다음으로 컸던 원소에 $x$를 더한 값입니다.],
            [- 만약 이 값도 $K$보다 크다면 그 다음으로 컸던 원소가 후보가 됩니다.],
        ),
        (
            [- 우선순위 큐의 원소들을 모두 정렬한 상태로 시작해봅시다.],
            [- 앞에서 했던 것처럼 쿼리를 진행하면, 문제가 원순열의 형태를 띄고 있는 것을 확인할 수 있습니다.],
            [- 모든 수에 $A_i$를 더할 필요가 있을까요?],
        ),
        (
            [- 여태까지 쿼리를 진행하며 총 더한 값 $S$만 가지고 진행해봅시다.],
            [- $S$를 $K$로 나눈 나머지를 $B$라고 합시다.],
            [- $K - B$보다 크거나 같은 값 중 가장 작은 것을 Q에서 찾아봅시다.],
            [- 해당 값은 무엇을 의미할까요?],
        ),
        (
            [- $Q$에서 $K - B$보다 크거나 같은 값 중 가장 작은 것을 $Q_i$라고 합시다.],
            [- $Q_i + B$는 $K$보다 크거나 같은 값 중에서 가장 작은 값입니다.],
            [- 즉, $Q_(i-1) + B$가 $K$보다 작은 값 중에서 가장 큰 값이므로 top이 됩니다.],
            [- 위의 $K-B$를 $Q$에서 찾는 과정에서 이분탐색을 활용할 수 있습니다.],
        ),
    ),
)
