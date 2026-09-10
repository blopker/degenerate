// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestOffSessionVariant2 {const PostPaymentIntentsRequestOffSessionVariant2._(this.value);

factory PostPaymentIntentsRequestOffSessionVariant2.fromJson(String json) {return switch (json) {
  'one_off' => oneOff,
  'recurring' => recurring,
  _ => PostPaymentIntentsRequestOffSessionVariant2._(json),
};}

static const PostPaymentIntentsRequestOffSessionVariant2 oneOff = PostPaymentIntentsRequestOffSessionVariant2._('one_off');

static const PostPaymentIntentsRequestOffSessionVariant2 recurring = PostPaymentIntentsRequestOffSessionVariant2._('recurring');

static const List<PostPaymentIntentsRequestOffSessionVariant2> values = [oneOff, recurring];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestOffSessionVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestOffSessionVariant2($value)';}
}
/// Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://docs.stripe.com/payments/cards/charging-saved-cards). This parameter can only be used with [`confirm=true`](https://docs.stripe.com/api/payment_intents/create#create_payment_intent-confirm).
@immutable
final class PostPaymentIntentsRequestOffSession {
  const PostPaymentIntentsRequestOffSession({this.$bool = const Omittable.absent(),
this.postPaymentIntentsRequestOffSessionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestOffSession._({required this.rawValue, required this.$bool,
required this.postPaymentIntentsRequestOffSessionVariant2,});
  factory PostPaymentIntentsRequestOffSession.fromJson(Object? json) => PostPaymentIntentsRequestOffSession._(
    rawValue: Omittable(json),
    $bool: parseAnyOfVariant<bool>(json, (value) => value! as bool),
postPaymentIntentsRequestOffSessionVariant2: parseAnyOfVariant<PostPaymentIntentsRequestOffSessionVariant2>(json, (value) => PostPaymentIntentsRequestOffSessionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<bool> $bool;
final Omittable<PostPaymentIntentsRequestOffSessionVariant2> postPaymentIntentsRequestOffSessionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $bool.isPresent || postPaymentIntentsRequestOffSessionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($bool.isPresent) $bool.value,
if (postPaymentIntentsRequestOffSessionVariant2.isPresent) postPaymentIntentsRequestOffSessionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestOffSession && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestOffSession(${toJson()})';
}
