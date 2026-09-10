// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shipping_details.dart';@immutable final class PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2 {const PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2._(this.value);

factory PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2._(json),
};}

static const PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2 $empty = PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2._('');

static const List<PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2($value)';}
}
/// Shipping information for this payment.
@immutable
final class PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetails {
  const PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetails({this.shippingDetails = const Omittable.absent(),
this.postPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetails._({required this.rawValue, required this.shippingDetails,
required this.postPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2,});
  factory PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetails.fromJson(Object? json) => PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetails._(
    rawValue: Omittable(json),
    shippingDetails: parseAnyOfVariant<ShippingDetails>(json, (value) => ShippingDetails.fromJson(value! as Map<String, dynamic>)),
postPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2: parseAnyOfVariant<PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2>(json, (value) => PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ShippingDetails> shippingDetails;
final Omittable<PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2> postPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => shippingDetails.isPresent || postPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (shippingDetails.isPresent) shippingDetails.value?.toJson(),
if (postPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2.isPresent) postPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetails && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetails(${toJson()})';
}
