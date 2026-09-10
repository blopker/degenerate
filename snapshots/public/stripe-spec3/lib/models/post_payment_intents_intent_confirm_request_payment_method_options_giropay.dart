// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param86.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropay({this.paymentMethodOptionsParam86 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropay._({required this.rawValue, required this.paymentMethodOptionsParam86,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam86: parseAnyOfVariant<PaymentMethodOptionsParam86>(json, (value) => PaymentMethodOptionsParam86.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam86> paymentMethodOptionsParam86;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam86.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam86.isPresent) paymentMethodOptionsParam86.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropay(${toJson()})';
}
