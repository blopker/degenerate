// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';/// The account for which the capability enables functionality.
@immutable
final class CapabilityAccount {
  const CapabilityAccount({this.string = const Omittable.absent(),
this.account = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CapabilityAccount._({required this.rawValue, required this.string,
required this.account,});
  factory CapabilityAccount.fromJson(Object? json) => CapabilityAccount._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
account: parseAnyOfVariant<Account>(json, (value) => Account.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Account> account;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || account.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (account.isPresent) account.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CapabilityAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CapabilityAccount(${toJson()})';
}
