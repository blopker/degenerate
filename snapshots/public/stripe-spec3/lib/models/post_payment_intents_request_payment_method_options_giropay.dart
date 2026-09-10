// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param12.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsGiropay {
  const PostPaymentIntentsRequestPaymentMethodOptionsGiropay({this.paymentMethodOptionsParam12 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsGiropay._({required this.rawValue, required this.paymentMethodOptionsParam12,
required this.postPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsGiropay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsGiropay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam12: parseAnyOfVariant<PaymentMethodOptionsParam12>(json, (value) => PaymentMethodOptionsParam12.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam12> paymentMethodOptionsParam12;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2> postPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam12.isPresent || postPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam12.isPresent) paymentMethodOptionsParam12.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsGiropay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsGiropay(${toJson()})';
}
