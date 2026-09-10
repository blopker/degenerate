// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription_schedule.dart';/// The subscription schedule that was created or updated from this quote.
@immutable
final class QuoteSubscriptionSchedule {
  const QuoteSubscriptionSchedule({this.string = const Omittable.absent(),
this.subscriptionSchedule = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const QuoteSubscriptionSchedule._({required this.rawValue, required this.string,
required this.subscriptionSchedule,});
  factory QuoteSubscriptionSchedule.fromJson(Object? json) => QuoteSubscriptionSchedule._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
subscriptionSchedule: parseAnyOfVariant<SubscriptionSchedule>(json, (value) => SubscriptionSchedule.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<SubscriptionSchedule> subscriptionSchedule;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || subscriptionSchedule.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (subscriptionSchedule.isPresent) subscriptionSchedule.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is QuoteSubscriptionSchedule && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'QuoteSubscriptionSchedule(${toJson()})';
}
