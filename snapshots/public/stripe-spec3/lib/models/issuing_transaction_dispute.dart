// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_dispute.dart';/// If you've disputed the transaction, the ID of the dispute.
@immutable
final class IssuingTransactionDispute {
  const IssuingTransactionDispute({this.string = const Omittable.absent(),
this.issuingDispute = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IssuingTransactionDispute._({required this.rawValue, required this.string,
required this.issuingDispute,});
  factory IssuingTransactionDispute.fromJson(Object? json) => IssuingTransactionDispute._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
issuingDispute: parseAnyOfVariant<IssuingDispute>(json, (value) => IssuingDispute.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<IssuingDispute> issuingDispute;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || issuingDispute.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (issuingDispute.isPresent) issuingDispute.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IssuingTransactionDispute && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IssuingTransactionDispute(${toJson()})';
}
