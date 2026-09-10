// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CanceledCancellationReasonVariant2 {const CanceledCancellationReasonVariant2._(this.value);

factory CanceledCancellationReasonVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => CanceledCancellationReasonVariant2._(json),
}; }

static const CanceledCancellationReasonVariant2 $empty = CanceledCancellationReasonVariant2._('');

static const List<CanceledCancellationReasonVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CanceledCancellationReasonVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CanceledCancellationReasonVariant2($value)'; } 
 }

@immutable
final class CanceledCancellationReason {
  const CanceledCancellationReason({this.string = const Omittable.absent(),
this.canceledCancellationReasonVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CanceledCancellationReason._({required this.rawValue, required this.string,
required this.canceledCancellationReasonVariant2,});
  factory CanceledCancellationReason.fromJson(Object? json) => CanceledCancellationReason._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
canceledCancellationReasonVariant2: parseAnyOfVariant<CanceledCancellationReasonVariant2>(json, (value) => CanceledCancellationReasonVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CanceledCancellationReasonVariant2> canceledCancellationReasonVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || canceledCancellationReasonVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (canceledCancellationReasonVariant2.isPresent) canceledCancellationReasonVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CanceledCancellationReason && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CanceledCancellationReason(${toJson()})';
}
