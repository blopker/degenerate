// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ServiceNotAsDescribed2CancellationReasonVariant2 {const ServiceNotAsDescribed2CancellationReasonVariant2._(this.value);

factory ServiceNotAsDescribed2CancellationReasonVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => ServiceNotAsDescribed2CancellationReasonVariant2._(json),
};}

static const ServiceNotAsDescribed2CancellationReasonVariant2 $empty = ServiceNotAsDescribed2CancellationReasonVariant2._('');

static const List<ServiceNotAsDescribed2CancellationReasonVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is ServiceNotAsDescribed2CancellationReasonVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'ServiceNotAsDescribed2CancellationReasonVariant2($value)';}
}

@immutable
final class ServiceNotAsDescribed2CancellationReason {
  const ServiceNotAsDescribed2CancellationReason({this.string = const Omittable.absent(),
this.serviceNotAsDescribed2CancellationReasonVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ServiceNotAsDescribed2CancellationReason._({required this.rawValue, required this.string,
required this.serviceNotAsDescribed2CancellationReasonVariant2,});
  factory ServiceNotAsDescribed2CancellationReason.fromJson(Object? json) => ServiceNotAsDescribed2CancellationReason._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
serviceNotAsDescribed2CancellationReasonVariant2: parseAnyOfVariant<ServiceNotAsDescribed2CancellationReasonVariant2>(json, (value) => ServiceNotAsDescribed2CancellationReasonVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<ServiceNotAsDescribed2CancellationReasonVariant2> serviceNotAsDescribed2CancellationReasonVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || serviceNotAsDescribed2CancellationReasonVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (serviceNotAsDescribed2CancellationReasonVariant2.isPresent) serviceNotAsDescribed2CancellationReasonVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ServiceNotAsDescribed2CancellationReason && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ServiceNotAsDescribed2CancellationReason(${toJson()})';
}
