// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_cardholder.dart';/// The cardholder to whom this transaction belongs.
@immutable
final class IssuingTransactionCardholder {
  const IssuingTransactionCardholder({this.string = const Omittable.absent(),
this.issuingCardholder = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IssuingTransactionCardholder._({required this.rawValue, required this.string,
required this.issuingCardholder,});
  factory IssuingTransactionCardholder.fromJson(Object? json) => IssuingTransactionCardholder._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
issuingCardholder: parseAnyOfVariant<IssuingCardholder>(json, (value) => IssuingCardholder.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<IssuingCardholder> issuingCardholder;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || issuingCardholder.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (issuingCardholder.isPresent) issuingCardholder.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IssuingTransactionCardholder && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IssuingTransactionCardholder(${toJson()})';
}
