// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_records_id_report_refund_request_processor_details_custom.dart';@immutable final class PostPaymentRecordsIdReportRefundRequestProcessorDetailsType {const PostPaymentRecordsIdReportRefundRequestProcessorDetailsType._(this.value);

factory PostPaymentRecordsIdReportRefundRequestProcessorDetailsType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  _ => PostPaymentRecordsIdReportRefundRequestProcessorDetailsType._(json),
}; }

static const PostPaymentRecordsIdReportRefundRequestProcessorDetailsType custom = PostPaymentRecordsIdReportRefundRequestProcessorDetailsType._('custom');

static const List<PostPaymentRecordsIdReportRefundRequestProcessorDetailsType> values = [custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentRecordsIdReportRefundRequestProcessorDetailsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentRecordsIdReportRefundRequestProcessorDetailsType($value)'; } 
 }
/// Processor information for this refund.
@immutable final class PostPaymentRecordsIdReportRefundRequestProcessorDetails {const PostPaymentRecordsIdReportRefundRequestProcessorDetails({required this.type, this.custom, });

factory PostPaymentRecordsIdReportRefundRequestProcessorDetails.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsIdReportRefundRequestProcessorDetails(
  custom: json['custom'] != null ? PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom.fromJson(json['custom'] as Map<String, dynamic>) : null,
  type: PostPaymentRecordsIdReportRefundRequestProcessorDetailsType.fromJson(json['type'] as String),
); }

final PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom? custom;

final PostPaymentRecordsIdReportRefundRequestProcessorDetailsType type;

Map<String, dynamic> toJson() { return {
  if (custom != null) 'custom': custom?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostPaymentRecordsIdReportRefundRequestProcessorDetails copyWith({PostPaymentRecordsIdReportRefundRequestProcessorDetailsCustom Function()? custom, PostPaymentRecordsIdReportRefundRequestProcessorDetailsType? type, }) { return PostPaymentRecordsIdReportRefundRequestProcessorDetails(
  custom: custom != null ? custom() : this.custom,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsIdReportRefundRequestProcessorDetails &&
          custom == other.custom &&
          type == other.type; } 
@override int get hashCode { return Object.hash(custom, type); } 
@override String toString() { return 'PostPaymentRecordsIdReportRefundRequestProcessorDetails(custom: $custom, type: $type)'; } 
 }
