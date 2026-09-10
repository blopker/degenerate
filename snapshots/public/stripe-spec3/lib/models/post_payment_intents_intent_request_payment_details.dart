// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_details.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentDetailsVariant2 {const PostPaymentIntentsIntentRequestPaymentDetailsVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentDetailsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentDetailsVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentDetailsVariant2 $empty = PostPaymentIntentsIntentRequestPaymentDetailsVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentDetailsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentDetailsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentDetailsVariant2($value)'; } 
 }
/// Provides industry-specific information about the charge.
@immutable
final class PostPaymentIntentsIntentRequestPaymentDetails {
  const PostPaymentIntentsIntentRequestPaymentDetails({this.paymentDetails = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentDetailsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentDetails._({required this.rawValue, required this.paymentDetails,
required this.postPaymentIntentsIntentRequestPaymentDetailsVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentDetails.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentDetails._(
    rawValue: Omittable(json),
    paymentDetails: parseAnyOfVariant<PaymentDetails>(json, (value) => PaymentDetails.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentDetailsVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentDetailsVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentDetailsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentDetails> paymentDetails;
final Omittable<PostPaymentIntentsIntentRequestPaymentDetailsVariant2> postPaymentIntentsIntentRequestPaymentDetailsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentDetails.isPresent || postPaymentIntentsIntentRequestPaymentDetailsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentDetails.isPresent) paymentDetails.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentDetailsVariant2.isPresent) postPaymentIntentsIntentRequestPaymentDetailsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentDetails && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentDetails(${toJson()})';
}
