// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription.dart';
@immutable
final class LineItemSubscription {
  const LineItemSubscription({this.string = const Omittable.absent(),
this.subscription = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const LineItemSubscription._({required this.rawValue, required this.string,
required this.subscription,});
  factory LineItemSubscription.fromJson(Object? json) => LineItemSubscription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
subscription: parseAnyOfVariant<Subscription>(json, (value) => Subscription.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Subscription> subscription;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || subscription.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (subscription.isPresent) subscription.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is LineItemSubscription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'LineItemSubscription(${toJson()})';
}
