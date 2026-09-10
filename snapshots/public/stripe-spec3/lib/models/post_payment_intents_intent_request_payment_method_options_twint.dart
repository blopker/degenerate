// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param72.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsTwint {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsTwint({this.paymentMethodOptionsParam72 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsTwint._({required this.rawValue, required this.paymentMethodOptionsParam72,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsTwint.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsTwint._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam72: parseAnyOfVariant<PaymentMethodOptionsParam72>(json, (value) => PaymentMethodOptionsParam72.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam72> paymentMethodOptionsParam72;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam72.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam72.isPresent) paymentMethodOptionsParam72.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsTwintVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsTwint && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsTwint(${toJson()})';
}
