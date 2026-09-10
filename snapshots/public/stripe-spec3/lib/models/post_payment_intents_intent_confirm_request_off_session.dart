// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestOffSessionVariant2 {const PostPaymentIntentsIntentConfirmRequestOffSessionVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestOffSessionVariant2.fromJson(String json) {return switch (json) {
  'one_off' => oneOff,
  'recurring' => recurring,
  _ => PostPaymentIntentsIntentConfirmRequestOffSessionVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestOffSessionVariant2 oneOff = PostPaymentIntentsIntentConfirmRequestOffSessionVariant2._('one_off');

static const PostPaymentIntentsIntentConfirmRequestOffSessionVariant2 recurring = PostPaymentIntentsIntentConfirmRequestOffSessionVariant2._('recurring');

static const List<PostPaymentIntentsIntentConfirmRequestOffSessionVariant2> values = [oneOff, recurring];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestOffSessionVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestOffSessionVariant2($value)';}
}
/// Set to `true` to indicate that the customer isn't in your checkout flow during this payment attempt and can't authenticate. Use this parameter in scenarios where you collect card details and [charge them later](https://docs.stripe.com/payments/cards/charging-saved-cards).
@immutable
final class PostPaymentIntentsIntentConfirmRequestOffSession {
  const PostPaymentIntentsIntentConfirmRequestOffSession({this.$bool = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestOffSessionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestOffSession._({required this.rawValue, required this.$bool,
required this.postPaymentIntentsIntentConfirmRequestOffSessionVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestOffSession.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestOffSession._(
    rawValue: Omittable(json),
    $bool: parseAnyOfVariant<bool>(json, (value) => value! as bool),
postPaymentIntentsIntentConfirmRequestOffSessionVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestOffSessionVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestOffSessionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<bool> $bool;
final Omittable<PostPaymentIntentsIntentConfirmRequestOffSessionVariant2> postPaymentIntentsIntentConfirmRequestOffSessionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $bool.isPresent || postPaymentIntentsIntentConfirmRequestOffSessionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($bool.isPresent) $bool.value,
if (postPaymentIntentsIntentConfirmRequestOffSessionVariant2.isPresent) postPaymentIntentsIntentConfirmRequestOffSessionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestOffSession && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestOffSession(${toJson()})';
}
