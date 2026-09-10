// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param36.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsWechatPay {
  const PostPaymentIntentsRequestPaymentMethodOptionsWechatPay({this.paymentMethodOptionsParam36 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsWechatPay._({required this.rawValue, required this.paymentMethodOptionsParam36,
required this.postPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsWechatPay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsWechatPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam36: parseAnyOfVariant<PaymentMethodOptionsParam36>(json, (value) => PaymentMethodOptionsParam36.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam36> paymentMethodOptionsParam36;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2> postPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam36.isPresent || postPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam36.isPresent) paymentMethodOptionsParam36.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsWechatPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsWechatPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsWechatPay(${toJson()})';
}
