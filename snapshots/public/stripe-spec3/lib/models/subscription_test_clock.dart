// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'test_helpers_test_clock.dart';/// ID of the test clock this subscription belongs to.
@immutable
final class SubscriptionTestClock {
  const SubscriptionTestClock({this.string = const Omittable.absent(),
this.testHelpersTestClock = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SubscriptionTestClock._({required this.rawValue, required this.string,
required this.testHelpersTestClock,});
  factory SubscriptionTestClock.fromJson(Object? json) => SubscriptionTestClock._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
testHelpersTestClock: parseAnyOfVariant<TestHelpersTestClock>(json, (value) => TestHelpersTestClock.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<TestHelpersTestClock> testHelpersTestClock;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || testHelpersTestClock.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (testHelpersTestClock.isPresent) testHelpersTestClock.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SubscriptionTestClock && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SubscriptionTestClock(${toJson()})';
}
