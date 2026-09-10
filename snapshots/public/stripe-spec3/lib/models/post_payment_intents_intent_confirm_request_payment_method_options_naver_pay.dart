// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param97.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPay({this.paymentMethodOptionsParam97 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPay._({required this.rawValue, required this.paymentMethodOptionsParam97,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam97: parseAnyOfVariant<PaymentMethodOptionsParam97>(json, (value) => PaymentMethodOptionsParam97.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam97> paymentMethodOptionsParam97;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam97.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam97.isPresent) paymentMethodOptionsParam97.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNaverPay(${toJson()})';
}
