// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_token.dart';/// [Token](https://docs.stripe.com/api/issuing/tokens/object) object used for this transaction. If a network token was not used for this transaction, this field will be null.
@immutable
final class IssuingTransactionToken {
  const IssuingTransactionToken({this.string = const Omittable.absent(),
this.issuingToken = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IssuingTransactionToken._({required this.rawValue, required this.string,
required this.issuingToken,});
  factory IssuingTransactionToken.fromJson(Object? json) => IssuingTransactionToken._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
issuingToken: parseAnyOfVariant<IssuingToken>(json, (value) => IssuingToken.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<IssuingToken> issuingToken;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || issuingToken.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (issuingToken.isPresent) issuingToken.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IssuingTransactionToken && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IssuingTransactionToken(${toJson()})';
}
