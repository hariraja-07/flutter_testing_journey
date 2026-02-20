// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_journey/counter.dart';

void main() {
  group("Counter Class - ", () {
    late Counter counter;

    // 1. setUpAll - runs once before all tests in this group
    setUpAll(() {
      print("Starting the test - run once");
    });

    // 2. setUp - runs before each test
    setUp(() {
      print("Fresh setup for each test");

      counter = Counter();
    });

    // 3. tearDown - runs after each test
    tearDown(() {
      print("cleanup after each test");
    });

    // 4. tearDownAll - runs once after all tests
    tearDownAll(() {
      print("test complete - final cleanup");
    });

    test(
      'given Counter class when it is instantiated then value of count should be 0',
      () {
        final value = counter.count;
        expect(value, 0);
      },
    );

    test(
      'given counter at 0 when increment is called once then count should be 1',
      () {
        counter.increment();
        final value = counter.count;
        expect(value, 1);
      },
    );
  });
}