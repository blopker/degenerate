// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param27.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsPaynow {
  const PostPaymentIntentsRequestPaymentMethodOptionsPaynow({this.paymentMethodOptionsParam27 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsPaynow._({required this.rawValue, required this.paymentMethodOptionsParam27,
required this.postPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsPaynow.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsPaynow._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam27: parseAnyOfVariant<PaymentMethodOptionsParam27>(json, (value) => PaymentMethodOptionsParam27.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam27> paymentMethodOptionsParam27;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2> postPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam27.isPresent || postPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam27.isPresent) paymentMethodOptionsParam27.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsPaynow && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsPaynow(${toJson()})';
}
