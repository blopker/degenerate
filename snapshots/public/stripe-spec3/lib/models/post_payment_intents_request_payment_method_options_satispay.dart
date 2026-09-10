// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param33.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsSatispay {
  const PostPaymentIntentsRequestPaymentMethodOptionsSatispay({this.paymentMethodOptionsParam33 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsSatispay._({required this.rawValue, required this.paymentMethodOptionsParam33,
required this.postPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsSatispay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsSatispay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam33: parseAnyOfVariant<PaymentMethodOptionsParam33>(json, (value) => PaymentMethodOptionsParam33.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam33> paymentMethodOptionsParam33;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2> postPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam33.isPresent || postPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam33.isPresent) paymentMethodOptionsParam33.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsSatispayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsSatispay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsSatispay(${toJson()})';
}
