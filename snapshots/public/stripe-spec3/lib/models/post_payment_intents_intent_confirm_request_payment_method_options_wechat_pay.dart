// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param110.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPay({this.paymentMethodOptionsParam110 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPay._({required this.rawValue, required this.paymentMethodOptionsParam110,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam110: parseAnyOfVariant<PaymentMethodOptionsParam110>(json, (value) => PaymentMethodOptionsParam110.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam110> paymentMethodOptionsParam110;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam110.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam110.isPresent) paymentMethodOptionsParam110.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsWechatPay(${toJson()})';
}
