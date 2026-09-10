// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_details2.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2($value)';}
}
/// Provides industry-specific information about the charge.
@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentDetails {
  const PostPaymentIntentsIntentConfirmRequestPaymentDetails({this.paymentDetails2 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentDetails._({required this.rawValue, required this.paymentDetails2,
required this.postPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentDetails.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentDetails._(
    rawValue: Omittable(json),
    paymentDetails2: parseAnyOfVariant<PaymentDetails2>(json, (value) => PaymentDetails2.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentDetails2> paymentDetails2;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2> postPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentDetails2.isPresent || postPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentDetails2.isPresent) paymentDetails2.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentDetailsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentDetails && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentDetails(${toJson()})';
}
