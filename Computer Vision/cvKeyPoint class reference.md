# cv::KeyPoint class reference

salient point detectors를 위한 자료구조.

얘의 instance는 keypoint를 저장한다. 즉, harris corner, surf, stardetector 같은 keypoint detectors들 중 하나에 의해 찾아진 한 point 특징을 저장한다.

keyPoint는 2D 위치, 고려되어야 할 이웃의 지름에 비례한 크기, 방향 그리고 다른 매개변수에 의해 특정된다. keypoint 이웃은 descriptor(주로 feature vector로 표현된다.)를 만드는 다른 알고리즘에 의해 분석된다. 해당 다른 영상들에서 같은 물체를 표현하는 keypoint들은 cv::KDTree나 다른 방법들에 의해 매칭된다.

https://docs.opencv.org/3.4.3/d2/d29/classcv_1_1KeyPoint.html



## 생성자 Documentation

cv::KeyPoint::KeyPoint()

​	얘가 default

cv::KeyPoint::KeyPoint(Point2f _pt, float _size, float _angle, float _response, int _octave, int _class_id)

​	_pt : 키포인트의 x,y 좌표 담긴 point, 얘 빼고 걍 float 2개 넣어도 됨

​	_size : 키포인트 지름

​	_angle : 키포인트 방향

​	_response : 키포인트에 대한 detector 반응 (키포인트 강도)

​	_octave : 키포인트가 발견된 옥타브 피라미드

​	_ class_id : object id



## 멤버 함수 Documentation

static void cv::KeyPoint::convert(...)

​	얘는 keypoint 벡터를 point들의 벡터로 변경 해 주거나 그 역으로 변경 해 줌(각 키포인트들이 같은 크기, 같

​	은 방향으로 할당 된 곳들 끼리 변경 됨 - 서로 비슷한 애들끼리 변경 시킨다 이 말)

static float cv::KeyPoint::overlap(...)

​	얘는 keypoint들의 쌍으로 겹친 부분을 계산한다. 중첩 부분은 keypoint 영역의 교집합과 keypoint 영역 합집	

​	합 부분의 비율이다. 이때 keypoint 영역은 원으로 간주한다. 만약 겹치지 않는다면 0을 반환. 만약 우연히 같

​	은 지역에 같은 크기로 된다면 1을 반환한다.

## 멤버 데이터 Documentation

float cv::KeyPoint::angle

​	keypoint의 계산된 방향(-1이면 적용 불가능한 거). [0,360) 각도와 이미지 좌표 시스템에 관련된 측정을 사용

int cv::KeyPoint::class_id

​	객체 클래스(object로 군집화가 필요할 때 사용 됨)

int cv::KeyPoint::octave

​	keypoint가 추출된 octave(피라미드 layer)

Point2f cv::KeyPoint::pt

​	keypoint의 좌표

float cv::KeyPoint::response

​	선택된 keypoint들 중 가장 강한 keypoint들. 정렬과 subsampling할 때 사용 될 수 있다.

float cv::KeyPoint::size

​	의미있는 keypoint 이웃의 지름