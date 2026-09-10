// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';/// The account (if any) the charge was made on behalf of for charges associated with this subscription. See the [Connect documentation](https://docs.stripe.com/connect/subscriptions#on-behalf-of) for details.
@immutable
final class SubscriptionOnBehalfOf {
  const SubscriptionOnBehalfOf({this.string = const Omittable.absent(),
this.account = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SubscriptionOnBehalfOf._({required this.rawValue, required this.string,
required this.account,});
  factory SubscriptionOnBehalfOf.fromJson(Object? json) => SubscriptionOnBehalfOf._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
account: parseAnyOfVariant<Account>(json, (value) => Account.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Account> account;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || account.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (account.isPresent) account.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SubscriptionOnBehalfOf && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SubscriptionOnBehalfOf(${toJson()})';
}
