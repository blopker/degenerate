// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TestEndpointResponseDefault {const TestEndpointResponseDefault({this.testNameThatCollides, this.testNameThatCollides2, this.otherTestNameThatCollides, this.otherTestNameThatCollides2, });

factory TestEndpointResponseDefault.fromJson(Map<String, dynamic> json) {return TestEndpointResponseDefault(
  testNameThatCollides: json['test_name_that_collides'] != null ? (json['test_name_that_collides'] as num).toInt() : null,
  testNameThatCollides2: json['testNameThatCollides'] != null ? (json['testNameThatCollides'] as num).toInt() : null,
  otherTestNameThatCollides: json['otherTestNameThatCollides'] as bool?,
  otherTestNameThatCollides2: json['other_test_name_that_collides'] as bool?,
);}

final int? testNameThatCollides;

final int? testNameThatCollides2;

final bool? otherTestNameThatCollides;

final bool? otherTestNameThatCollides2;

Map<String, dynamic> toJson() {return {
  'test_name_that_collides': ?testNameThatCollides,
  'testNameThatCollides': ?testNameThatCollides2,
  'otherTestNameThatCollides': ?otherTestNameThatCollides,
  'other_test_name_that_collides': ?otherTestNameThatCollides2,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'test_name_that_collides', 'testNameThatCollides', 'otherTestNameThatCollides', 'other_test_name_that_collides'}.contains(key));}
TestEndpointResponseDefault copyWith({int? Function()? testNameThatCollides, int? Function()? testNameThatCollides2, bool? Function()? otherTestNameThatCollides, bool? Function()? otherTestNameThatCollides2, }) {return TestEndpointResponseDefault(
  testNameThatCollides: testNameThatCollides != null ? testNameThatCollides() : this.testNameThatCollides,
  testNameThatCollides2: testNameThatCollides2 != null ? testNameThatCollides2() : this.testNameThatCollides2,
  otherTestNameThatCollides: otherTestNameThatCollides != null ? otherTestNameThatCollides() : this.otherTestNameThatCollides,
  otherTestNameThatCollides2: otherTestNameThatCollides2 != null ? otherTestNameThatCollides2() : this.otherTestNameThatCollides2,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is TestEndpointResponseDefault &&
          testNameThatCollides == other.testNameThatCollides &&
          testNameThatCollides2 == other.testNameThatCollides2 &&
          otherTestNameThatCollides == other.otherTestNameThatCollides &&
          otherTestNameThatCollides2 == other.otherTestNameThatCollides2;}
@override int get hashCode {return Object.hash(testNameThatCollides, testNameThatCollides2, otherTestNameThatCollides, otherTestNameThatCollides2);}
@override String toString() {return 'TestEndpointResponseDefault(testNameThatCollides: $testNameThatCollides, testNameThatCollides2: $testNameThatCollides2, otherTestNameThatCollides: $otherTestNameThatCollides, otherTestNameThatCollides2: $otherTestNameThatCollides2)';}
}
