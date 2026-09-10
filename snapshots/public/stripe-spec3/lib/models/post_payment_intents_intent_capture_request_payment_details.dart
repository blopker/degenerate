// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_details_capture_params.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2 {const PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2._(json),
};}

static const PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2 $empty = PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2($value)';}
}
/// Provides industry-specific information about the charge.
@immutable
final class PostPaymentIntentsIntentCaptureRequestPaymentDetails {
  const PostPaymentIntentsIntentCaptureRequestPaymentDetails({this.paymentDetailsCaptureParams = const Omittable.absent(),
this.postPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentCaptureRequestPaymentDetails._({required this.rawValue, required this.paymentDetailsCaptureParams,
required this.postPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2,});
  factory PostPaymentIntentsIntentCaptureRequestPaymentDetails.fromJson(Object? json) => PostPaymentIntentsIntentCaptureRequestPaymentDetails._(
    rawValue: Omittable(json),
    paymentDetailsCaptureParams: parseAnyOfVariant<PaymentDetailsCaptureParams>(json, (value) => PaymentDetailsCaptureParams.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2: parseAnyOfVariant<PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2>(json, (value) => PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentDetailsCaptureParams> paymentDetailsCaptureParams;
final Omittable<PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2> postPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentDetailsCaptureParams.isPresent || postPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentDetailsCaptureParams.isPresent) paymentDetailsCaptureParams.value?.toJson(),
if (postPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2.isPresent) postPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestPaymentDetails && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentCaptureRequestPaymentDetails(${toJson()})';
}
