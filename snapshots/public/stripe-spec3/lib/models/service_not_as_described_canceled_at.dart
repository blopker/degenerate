// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ServiceNotAsDescribedCanceledAtVariant2 {const ServiceNotAsDescribedCanceledAtVariant2._(this.value);

factory ServiceNotAsDescribedCanceledAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribedCanceledAtVariant2._(json),
}; }

static const ServiceNotAsDescribedCanceledAtVariant2 $empty = ServiceNotAsDescribedCanceledAtVariant2._('');

static const List<ServiceNotAsDescribedCanceledAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ServiceNotAsDescribedCanceledAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ServiceNotAsDescribedCanceledAtVariant2($value)'; } 
 }

@immutable
final class ServiceNotAsDescribedCanceledAt {
  const ServiceNotAsDescribedCanceledAt({this.$int = const Omittable.absent(),
this.serviceNotAsDescribedCanceledAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ServiceNotAsDescribedCanceledAt._({required this.rawValue, required this.$int,
required this.serviceNotAsDescribedCanceledAtVariant2,});
  factory ServiceNotAsDescribedCanceledAt.fromJson(Object? json) => ServiceNotAsDescribedCanceledAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
serviceNotAsDescribedCanceledAtVariant2: parseAnyOfVariant<ServiceNotAsDescribedCanceledAtVariant2>(json, (value) => ServiceNotAsDescribedCanceledAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<ServiceNotAsDescribedCanceledAtVariant2> serviceNotAsDescribedCanceledAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || serviceNotAsDescribedCanceledAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (serviceNotAsDescribedCanceledAtVariant2.isPresent) serviceNotAsDescribedCanceledAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ServiceNotAsDescribedCanceledAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ServiceNotAsDescribedCanceledAt(${toJson()})';
}
