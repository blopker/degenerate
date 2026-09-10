// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param30.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsPromptpay {
  const PostPaymentIntentsRequestPaymentMethodOptionsPromptpay({this.paymentMethodOptionsParam30 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsPromptpay._({required this.rawValue, required this.paymentMethodOptionsParam30,
required this.postPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsPromptpay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsPromptpay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam30: parseAnyOfVariant<PaymentMethodOptionsParam30>(json, (value) => PaymentMethodOptionsParam30.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam30> paymentMethodOptionsParam30;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2> postPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam30.isPresent || postPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam30.isPresent) paymentMethodOptionsParam30.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsPromptpayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsPromptpay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsPromptpay(${toJson()})';
}
