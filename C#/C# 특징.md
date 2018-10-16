# C# 특징

## - .NET 컴파일 과정

![](compile.JPG)

MSIL(MicroSoft Intermediate Language) : CIL, Metadata, Manifest를 포함하고 있다.

CIL(Common Intermediate Language) : CLI 설명서에의해 정의된 최저 레벨의 사람이 읽을 수 있는 언어이다. Object oriented assembly language이다. 얘의 bytecode가 native code로 변환된다.

CLI(Common Language Infrastructure) : 그냥 .net의 설명서, compile-time, run-time시 언어에 종속적이지 않은 플랫폼을 제공함. exception, garbage collection, 보안등을 위한 S/W component를 포함하고 CLI가 구현된 것이 CLR이다.

CLR(Common Language Runtime) : assembly가 CLR위에서 동작 즉, .Net의 Runtime이다.

JIT(Just In Time) compilation : 동적 번역(dynamic translation)이라고도 하며 프로그램을 실제 시행하는 시점에 기계어로 번역하는 컴파일 기법. 프로그램의 실행 속도를 빠르게 하기 위해 사용 됨. 실행 시점에서 interpreter 방식으로 기계어 코드를 생성하면서 그 코드를 캐싱하여, 같은 함수가 여러 번 불릴 떄 매번 기계어 코드를 생성하는 것을 방지한다.

## - 기본 자료형(Primitive Types)

![](dataType.JPG)

object :  모든 자료형의 부모 클래스

## Format Specifier

![](C:\Program Files\Git\experience\C#\formatSpecifiers.JPG)

사용 예시

![](C:\Program Files\Git\experience\C#\formatSpecifierEx.JPG)

## for each

사용 예시

![](C:\Program Files\Git\experience\C#\forEach.jpg)

## call by reference

함수(**???** a, **???** b);

returnValue 함수(**???** 형 변수명, **???** 형 변수명){} 형식에서

**ref** : 메모리의 주소를 전달함. 매개변수로 사용하기 전에 초기화 필요.

**out** : ref와 같은 기능을 하지만 매개변수로 전달 시 초기화가 필요 없다.

**params** : 길이의 제한을 받지 않는 매개변수를 전달 할 수 있다.

​		ex) aa(1,2,3,4,5,6,7);

​		      static int aa(params int[] list){... list[i]이런식으로 접근 ...}

## Extension Method

public static retType method(this extensionType identifier, params...){}

ex) public static int m(this int var, int a, int b){

​		int result = var;

​		for(int i=0; i<b; ++i) {result *= a;}

​		return result;

​	}

​	static void someFunction(){

​		Console.WriteLine("{0}\n", 10.m(2, 3));

​	}

이미 빌드된 라이브러리를 참조해서 사용하고 있는데, 이 라이브러리 내부에 있는 기존의 클래스를 좀 더 확장시키고 싶을 때 확장 메소드를 통해 기존 클래스를 변경하지 않고 기능을 확장 할 수 있다. 상속을 사용해도 되지만 sealed로 한정되어 있는 경우엔 확장 메소드의 사용을 고려해야 한다.

## Partial class

partial class n{}

partial class n2{}

partial class n3{}

앞에 partial키워드가 붙은 클래스는 컴파일 시 컴파일러에 의해 하나로 합쳐짐. 분할에는 제한이 ㅇ벗다고 한다. pratial 은 interface, struct에서도 사용 될 수 있다.

