// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ServiceNotAsDescribedReceivedAtVariant2 {const ServiceNotAsDescribedReceivedAtVariant2._(this.value);

factory ServiceNotAsDescribedReceivedAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribedReceivedAtVariant2._(json),
}; }

static const ServiceNotAsDescribedReceivedAtVariant2 $empty = ServiceNotAsDescribedReceivedAtVariant2._('');

static const List<ServiceNotAsDescribedReceivedAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ServiceNotAsDescribedReceivedAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ServiceNotAsDescribedReceivedAtVariant2($value)'; } 
 }

@immutable
final class ServiceNotAsDescribedReceivedAt {
  const ServiceNotAsDescribedReceivedAt({this.$int = const Omittable.absent(),
this.serviceNotAsDescribedReceivedAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ServiceNotAsDescribedReceivedAt._({required this.rawValue, required this.$int,
required this.serviceNotAsDescribedReceivedAtVariant2,});
  factory ServiceNotAsDescribedReceivedAt.fromJson(Object? json) => ServiceNotAsDescribedReceivedAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
serviceNotAsDescribedReceivedAtVariant2: parseAnyOfVariant<ServiceNotAsDescribedReceivedAtVariant2>(json, (value) => ServiceNotAsDescribedReceivedAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<ServiceNotAsDescribedReceivedAtVariant2> serviceNotAsDescribedReceivedAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || serviceNotAsDescribedReceivedAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (serviceNotAsDescribedReceivedAtVariant2.isPresent) serviceNotAsDescribedReceivedAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ServiceNotAsDescribedReceivedAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ServiceNotAsDescribedReceivedAt(${toJson()})';
}
