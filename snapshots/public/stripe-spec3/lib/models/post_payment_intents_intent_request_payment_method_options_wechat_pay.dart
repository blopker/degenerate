// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param73.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPay({this.paymentMethodOptionsParam73 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPay._({required this.rawValue, required this.paymentMethodOptionsParam73,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam73: parseAnyOfVariant<PaymentMethodOptionsParam73>(json, (value) => PaymentMethodOptionsParam73.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam73> paymentMethodOptionsParam73;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam73.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam73.isPresent) paymentMethodOptionsParam73.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsWechatPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsWechatPay(${toJson()})';
}
