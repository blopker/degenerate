// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ServiceNotAsDescribed2ReceivedAtVariant2 {const ServiceNotAsDescribed2ReceivedAtVariant2._(this.value);

factory ServiceNotAsDescribed2ReceivedAtVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribed2ReceivedAtVariant2._(json),
};}

static const ServiceNotAsDescribed2ReceivedAtVariant2 $empty = ServiceNotAsDescribed2ReceivedAtVariant2._('');

static const List<ServiceNotAsDescribed2ReceivedAtVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is ServiceNotAsDescribed2ReceivedAtVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'ServiceNotAsDescribed2ReceivedAtVariant2($value)';}
}

@immutable
final class ServiceNotAsDescribed2ReceivedAt {
  const ServiceNotAsDescribed2ReceivedAt({this.$int = const Omittable.absent(),
this.serviceNotAsDescribed2ReceivedAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ServiceNotAsDescribed2ReceivedAt._({required this.rawValue, required this.$int,
required this.serviceNotAsDescribed2ReceivedAtVariant2,});
  factory ServiceNotAsDescribed2ReceivedAt.fromJson(Object? json) => ServiceNotAsDescribed2ReceivedAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
serviceNotAsDescribed2ReceivedAtVariant2: parseAnyOfVariant<ServiceNotAsDescribed2ReceivedAtVariant2>(json, (value) => ServiceNotAsDescribed2ReceivedAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<ServiceNotAsDescribed2ReceivedAtVariant2> serviceNotAsDescribed2ReceivedAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || serviceNotAsDescribed2ReceivedAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (serviceNotAsDescribed2ReceivedAtVariant2.isPresent) serviceNotAsDescribed2ReceivedAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ServiceNotAsDescribed2ReceivedAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ServiceNotAsDescribed2ReceivedAt(${toJson()})';
}
