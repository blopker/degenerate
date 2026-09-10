// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param37.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsZip {
  const PostPaymentIntentsRequestPaymentMethodOptionsZip({this.paymentMethodOptionsParam37 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsZipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsZip._({required this.rawValue, required this.paymentMethodOptionsParam37,
required this.postPaymentIntentsRequestPaymentMethodOptionsZipVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsZip.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsZip._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam37: parseAnyOfVariant<PaymentMethodOptionsParam37>(json, (value) => PaymentMethodOptionsParam37.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsZipVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam37> paymentMethodOptionsParam37;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsZipVariant2> postPaymentIntentsRequestPaymentMethodOptionsZipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam37.isPresent || postPaymentIntentsRequestPaymentMethodOptionsZipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam37.isPresent) paymentMethodOptionsParam37.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsZipVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsZipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsZip && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsZip(${toJson()})';
}
