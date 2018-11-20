# Norm

$$
𝑥={𝑥_1,𝑥_2, 𝑥_3, …, 𝑥_𝑛}
$$

요런 벡터가 주어졌을 때,

L1, L2는 sift, surf에 적합하고 L1이 당연히 더 빠르지만 정확도 면에서는 L2가 더 좋음.

hamming1, 2는 orb, brisk에 좀 더 좋은 효능을 준다고 한다.

## NORM_L1

얘는 맨하탄 거리, 즉 각 절대값들의 합.

![enter image description here](https://i.stack.imgur.com/pUhFS.gif)

## NORM_L2

얘는 유클리디안 경로, 즉 값들의 제곱합 의 루트를 씌우면 됨

![enter image description here](https://i.stack.imgur.com/u8o9x.gif)

## NORM_HAMMING1,2

얘는 해밍거리로 측정

