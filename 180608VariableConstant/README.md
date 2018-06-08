# Variable and Constant (변수와 상수)

### 1. 변수 (Variable)

- 변수는 데이터 타입이 처음 설정 후에 나중에 그 값이 바뀌어도 상관이 없는 것을 변수라고 한다. 

  ```objective-c
  NSString *word1 = @"Hello";
  word1 = @"Goodbye";
  
  int num = 5;
  num = 10;
  ```

  - 위에 코드는 word1이라는 NSString타입과 num이라는 int타입의 변수를 설정했다. 이렇게 설정한 후에 word1과 num이라는 변수의 값이 변해도 아무 문제없다.



### 2. 상수 (Constant)

- 상수는 데이터 타입이 처음 설정된 이후에 절대로 변하면 안된다.

  ```objective-c
  NSString *const word2 = @"Hello";
  word2 = @"Goodbye";
  
  const int num1 = 5;
  num1 = 15;
  ```

  - 위에 코드는 word2와 num1을 상수로 설정을 한 후 값을 변환하려고 하지만 이렇게 하면 컴파일 에러가 발생하게 된다. 상수는 값을 설정한 후 값이 변하면 안되는데 다른 값으로 변환하려고 했기 때문에 에러가 발생하게 된다.