// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shipping_details.dart';final class PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2 {const PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2._(this.value);

factory PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2._(json),
}; }

static const PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2 $empty = PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2._('');

static const List<PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2($value)'; } 
 }
typedef PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetails = OneOf2<ShippingDetails,PostPaymentRecordsIdReportPaymentAttemptInformationalRequestShippingDetailsVariant2>;