// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param109.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwint {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwint({this.paymentMethodOptionsParam109 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwint._({required this.rawValue, required this.paymentMethodOptionsParam109,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwint.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwint._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam109: parseAnyOfVariant<PaymentMethodOptionsParam109>(json, (value) => PaymentMethodOptionsParam109.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam109> paymentMethodOptionsParam109;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam109.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam109.isPresent) paymentMethodOptionsParam109.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwintVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwint && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsTwint(${toJson()})';
}
