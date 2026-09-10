// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param104.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpay({this.paymentMethodOptionsParam104 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpay._({required this.rawValue, required this.paymentMethodOptionsParam104,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam104: parseAnyOfVariant<PaymentMethodOptionsParam104>(json, (value) => PaymentMethodOptionsParam104.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam104> paymentMethodOptionsParam104;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam104.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam104.isPresent) paymentMethodOptionsParam104.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPromptpay(${toJson()})';
}
