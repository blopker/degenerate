// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param111.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZip {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZip({this.paymentMethodOptionsParam111 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZip._({required this.rawValue, required this.paymentMethodOptionsParam111,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZip.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZip._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam111: parseAnyOfVariant<PaymentMethodOptionsParam111>(json, (value) => PaymentMethodOptionsParam111.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam111> paymentMethodOptionsParam111;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam111.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam111.isPresent) paymentMethodOptionsParam111.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZip && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsZip(${toJson()})';
}
