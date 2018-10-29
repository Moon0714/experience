# SFM, MVS

Structure from Motion(SFM)과 Multi View Stereovision(MVS)는 같은 가정을 가지지 않는 기술이기 때문에 서로 보완적이다. MVS는 실행 시키기 위해서 SFM에 의해 추정된 카메라 매개변수들이 필요하다.

보통 SFM을 사용하여 거친 3D output(각 이미지에 대한 카메라 매개변수를 가지는)을 얻고 PMVS2를 사용하여 dense output을 얻는다 마지막으로 CMVS를 사용하여 PMVS2의 제약 사항을 피해간다고 한다.

## Structure From Motion

3D 재구성에서의 첫 걸음은 SFM(ex: Bundler, VisualSFM, OpenMVG) 알고리즘이다. 이 알고리즘은 여러개의 영상을 받아들여 각 이미지에 대한 거친 3D 형태의 장면(그래서 sparse reconstructuion이라고도 함)이라고도 불리는 카메라 매개변수를 출력한다. 

SFM의 출력이 coarse 3D shape이 되는 이유는 SFM 기술은 모든 영상에  대해 2D 특징들을 찾고 영상간 특질들의 쌍을 찾으며 시작하기 때문이다. 이러한 특성들은 우리가 descriptors(SIFT, ORB, SURF)라 부르는 것들에 의해 표현된다.  이 descriptor들은 영상에서 작은 지역을 표현하기 위해 만들어진다. 그들은 highly textured or rough geometries로 표현 가능하지만 이러한 scene features들은 어떤 한 장면이 사용되는 동안 장면을 구분하는데 유일성이 필요하게 된다. SFM이 특징을 사용하여 3D reconstruction을 수행할 때, 3D 장면 재구성에서의 정점들은 유일한 textures or edges에 위치할 것이고 이는 coarse mesh를 output으로 줄 것이다. SFM은 구분되는 texture, 정확성 없이 표면의 중간에 위치한 정점들을 생성하지는 않을것이다. 하지만 영상간 많은 matches를 발견했을 때, 카메라 위치, 자세에 관련된 3D position을 얻을수 있는 3D transformation matrix 를 계산 해 줄것이다.

## Multi View Stereovision

MVS 알고리즘은 SFM 기술에 의해 얻어진 mesh를 정제하는데 사용되어, dense reconstruction이라 불리는 결과를 낸다. 이 알고리즘은 SFM알고리즘의 output인 각 영상의 카메라 매개변수를 요구한다. MVS는 보다 제한된 문제에서 작동해서 SFM에서 탐지 되지 않았던 지역의 3D정점들을 게산해 줄수 있다.

PMVS(Patch based MVS)는 epipolar geometry 방법을 사용해서 특징 추출자들이 찾지 못한 match를 찾는다. 이 방법을 사용하면 match를 찾을 때 1D line 만을 사용하면 된다. 즉, 최적화를 할 수 있다.

CMVS(Clustering views for MVS) 는 최적화를 하기 위해 꽤 많은 시간이 필요해서 느려지는데 얘는 SFM output을 군집화 함, 그 다음에 PMVS2를 불러서 작동 시키기 때문에 최적화가 빠름.