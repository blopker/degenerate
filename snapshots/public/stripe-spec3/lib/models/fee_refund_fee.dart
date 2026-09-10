// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'application_fee.dart';/// ID of the application fee that was refunded.
@immutable
final class FeeRefundFee {
  const FeeRefundFee({this.string = const Omittable.absent(),
this.applicationFee = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const FeeRefundFee._({required this.rawValue, required this.string,
required this.applicationFee,});
  factory FeeRefundFee.fromJson(Object? json) => FeeRefundFee._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
applicationFee: parseAnyOfVariant<ApplicationFee>(json, (value) => ApplicationFee.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<ApplicationFee> applicationFee;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || applicationFee.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (applicationFee.isPresent) applicationFee.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is FeeRefundFee && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'FeeRefundFee(${toJson()})';
}
