#let K_desc = (
    (
        (
            [- $B$가 증가수열이기 위해서는 $B_(i) < B_(i + 1)$이어야 합니다. $(1 <= i <= N - K)$],
            [- $A_(i) + A_(i + 1) + dots + A_(i + K - 1) < A_(i + 1) + dots + A_(i + K - 1) + A_(i + K)$],
            [- $A_(i) < A_(i + K)$],
            [- 이를 정리하면 다음과 같이 $K$개의 그룹으로 나눌 수 있습니다.],
            [- $display(cases(
                A_(1) < A_(1 + K) < A_(1 + 2K) < dots, 
                A_(2) < A_(2 + K) < A_(2 + 2K) < dots, 
                dots, 
                A_(K) < A_(2K) < A_(3K) < dots, 
                ))$]
        ),
        (
            [- $1$부터 $N$까지의 수가 어느 그룹에 들어갈 지 결정한다면 경우의 수를 구할 수 있습니다.],
            [- 각 그룹은 오름차순 정렬되므로, 그룹 내의 순서는 고려하지 않아도 됩니다.],
            [- $
                display(frac(N !, product_(i=1)^(K) [i "그룹의 항목 수"]!)
                = frac(N !, product_(i=1)^(N) floor(frac(i + K - 1, K))))
            $]
        ),
    ),
)