// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_param.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsCard {
  const PostPaymentIntentsRequestPaymentMethodOptionsCard({this.paymentIntentParam = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsCard._({required this.rawValue, required this.paymentIntentParam,
required this.postPaymentIntentsRequestPaymentMethodOptionsCardVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsCard.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsCard._(
    rawValue: Omittable(json),
    paymentIntentParam: parseAnyOfVariant<PaymentIntentParam>(json, (value) => PaymentIntentParam.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsCardVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentParam> paymentIntentParam;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsCardVariant2> postPaymentIntentsRequestPaymentMethodOptionsCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentParam.isPresent || postPaymentIntentsRequestPaymentMethodOptionsCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentParam.isPresent) paymentIntentParam.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsCardVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsCard(${toJson()})';
}
