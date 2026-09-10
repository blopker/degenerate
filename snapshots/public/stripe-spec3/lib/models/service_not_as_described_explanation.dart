// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ServiceNotAsDescribedExplanationVariant2 {const ServiceNotAsDescribedExplanationVariant2._(this.value);

factory ServiceNotAsDescribedExplanationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribedExplanationVariant2._(json),
};}

static const ServiceNotAsDescribedExplanationVariant2 $empty = ServiceNotAsDescribedExplanationVariant2._('');

static const List<ServiceNotAsDescribedExplanationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is ServiceNotAsDescribedExplanationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'ServiceNotAsDescribedExplanationVariant2($value)';}
}

@immutable
final class ServiceNotAsDescribedExplanation {
  const ServiceNotAsDescribedExplanation({this.string = const Omittable.absent(),
this.serviceNotAsDescribedExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ServiceNotAsDescribedExplanation._({required this.rawValue, required this.string,
required this.serviceNotAsDescribedExplanationVariant2,});
  factory ServiceNotAsDescribedExplanation.fromJson(Object? json) => ServiceNotAsDescribedExplanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
serviceNotAsDescribedExplanationVariant2: parseAnyOfVariant<ServiceNotAsDescribedExplanationVariant2>(json, (value) => ServiceNotAsDescribedExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<ServiceNotAsDescribedExplanationVariant2> serviceNotAsDescribedExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || serviceNotAsDescribedExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (serviceNotAsDescribedExplanationVariant2.isPresent) serviceNotAsDescribedExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ServiceNotAsDescribedExplanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ServiceNotAsDescribedExplanation(${toJson()})';
}
