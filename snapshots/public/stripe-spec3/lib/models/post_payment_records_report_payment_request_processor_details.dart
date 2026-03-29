// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_records_report_payment_request_processor_details_custom.dart';final class PostPaymentRecordsReportPaymentRequestProcessorDetailsType {const PostPaymentRecordsReportPaymentRequestProcessorDetailsType._(this.value);

factory PostPaymentRecordsReportPaymentRequestProcessorDetailsType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  _ => PostPaymentRecordsReportPaymentRequestProcessorDetailsType._(json),
}; }

static const PostPaymentRecordsReportPaymentRequestProcessorDetailsType custom = PostPaymentRecordsReportPaymentRequestProcessorDetailsType._('custom');

static const List<PostPaymentRecordsReportPaymentRequestProcessorDetailsType> values = [custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentRecordsReportPaymentRequestProcessorDetailsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentRecordsReportPaymentRequestProcessorDetailsType($value)'; } 
 }
/// Processor information for this payment.
final class PostPaymentRecordsReportPaymentRequestProcessorDetails {const PostPaymentRecordsReportPaymentRequestProcessorDetails({this.custom, required this.type, });

factory PostPaymentRecordsReportPaymentRequestProcessorDetails.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsReportPaymentRequestProcessorDetails(
  custom: json['custom'] != null ? PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom.fromJson(json['custom'] as Map<String, dynamic>) : null,
  type: PostPaymentRecordsReportPaymentRequestProcessorDetailsType.fromJson(json['type'] as String),
); }

final PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom? custom;

final PostPaymentRecordsReportPaymentRequestProcessorDetailsType type;

Map<String, dynamic> toJson() { return {
  if (custom != null) 'custom': custom?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostPaymentRecordsReportPaymentRequestProcessorDetails copyWith({PostPaymentRecordsReportPaymentRequestProcessorDetailsCustom Function()? custom, PostPaymentRecordsReportPaymentRequestProcessorDetailsType? type, }) { return PostPaymentRecordsReportPaymentRequestProcessorDetails(
  custom: custom != null ? custom() : this.custom,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsReportPaymentRequestProcessorDetails &&
          custom == other.custom &&
          type == other.type; } 
@override int get hashCode { return Object.hash(custom, type); } 
@override String toString() { return 'PostPaymentRecordsReportPaymentRequestProcessorDetails(custom: $custom, type: $type)'; } 
 }
