// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param15.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsInteracPresent {
  const PostPaymentIntentsRequestPaymentMethodOptionsInteracPresent({this.paymentMethodOptionsParam15 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsInteracPresent._({required this.rawValue, required this.paymentMethodOptionsParam15,
required this.postPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsInteracPresent.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsInteracPresent._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam15: parseAnyOfVariant<PaymentMethodOptionsParam15>(json, (value) => PaymentMethodOptionsParam15.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam15> paymentMethodOptionsParam15;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2> postPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam15.isPresent || postPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam15.isPresent) paymentMethodOptionsParam15.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsInteracPresentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsInteracPresent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsInteracPresent(${toJson()})';
}
