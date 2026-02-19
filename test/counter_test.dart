import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_journey/counter.dart';

void main(){
  // given when then 
  test(
    'given Counter class when it is instantiated then value of count should be 0',
    () {
      //Arrange - setup
      final Counter counter = Counter();

      //Act - execute 
      final value = counter.count; 

      //Assert - verify
      expect(value,0);
    }
  );

  // given when then
  test(
    'given counter at 0 when increment is called once then count should be 1',
    (){
      //Arrange - setup 
      final Counter counter = Counter();

      //Act - execute 
      counter.increment();
      final value = counter.count;

      //Assert - verify 
      expect(value, 1);
    }
  );
}