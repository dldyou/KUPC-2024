#let C_desc = (
    (
        (
            [- 어떤 큰 원소를 잡고 시계와 반시계 방향으로 회전을 반복하는 것이 이득입니다.],
            [- $A_t$에서 이를 반복할 때, 얻을 수 있는 점수는 $sum_(i=1)^(t)A_i+ (k-t) times A_t$입니다.],
            [- 반대로 돌려 $A_t$까지 갈 수도 있습니다.],
            [- 이때 얻을 수 있는 점수는 $sum_(i=t)^(N)A_i+(k-(N-t+1)) times A_i$입니다.],
            [- 모든 $t$에 대해 최댓값을 구하면 됩니다.],
        ),
    ),
)