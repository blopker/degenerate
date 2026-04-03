// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_radar_payment_evaluations_request_client_device_metadata_details.dart';import 'post_radar_payment_evaluations_request_customer_details.dart';import 'post_radar_payment_evaluations_request_payment_details.dart';@immutable final class PostRadarPaymentEvaluationsRequest {const PostRadarPaymentEvaluationsRequest({required this.customerDetails, required this.paymentDetails, this.clientDeviceMetadataDetails, this.expand, this.metadata, });

factory PostRadarPaymentEvaluationsRequest.fromJson(Map<String, dynamic> json) { return PostRadarPaymentEvaluationsRequest(
  clientDeviceMetadataDetails: json['client_device_metadata_details'] != null ? PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails.fromJson(json['client_device_metadata_details'] as Map<String, dynamic>) : null,
  customerDetails: PostRadarPaymentEvaluationsRequestCustomerDetails.fromJson(json['customer_details'] as Map<String, dynamic>),
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  paymentDetails: PostRadarPaymentEvaluationsRequestPaymentDetails.fromJson(json['payment_details'] as Map<String, dynamic>),
); }

/// Details about the Client Device Metadata to associate with the payment evaluation.
final PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails? clientDeviceMetadataDetails;

/// Details about the customer associated with the payment evaluation.
final PostRadarPaymentEvaluationsRequestCustomerDetails customerDetails;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// Details about the payment.
final PostRadarPaymentEvaluationsRequestPaymentDetails paymentDetails;

Map<String, dynamic> toJson() { return {
  if (clientDeviceMetadataDetails != null) 'client_device_metadata_details': clientDeviceMetadataDetails?.toJson(),
  'customer_details': customerDetails.toJson(),
  'expand': ?expand,
  'metadata': ?metadata,
  'payment_details': paymentDetails.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('customer_details') &&
      json.containsKey('payment_details'); } 
PostRadarPaymentEvaluationsRequest copyWith({PostRadarPaymentEvaluationsRequestClientDeviceMetadataDetails Function()? clientDeviceMetadataDetails, PostRadarPaymentEvaluationsRequestCustomerDetails? customerDetails, List<String> Function()? expand, Map<String, String> Function()? metadata, PostRadarPaymentEvaluationsRequestPaymentDetails? paymentDetails, }) { return PostRadarPaymentEvaluationsRequest(
  clientDeviceMetadataDetails: clientDeviceMetadataDetails != null ? clientDeviceMetadataDetails() : this.clientDeviceMetadataDetails,
  customerDetails: customerDetails ?? this.customerDetails,
  expand: expand != null ? expand() : this.expand,
  metadata: metadata != null ? metadata() : this.metadata,
  paymentDetails: paymentDetails ?? this.paymentDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostRadarPaymentEvaluationsRequest &&
          clientDeviceMetadataDetails == other.clientDeviceMetadataDetails &&
          customerDetails == other.customerDetails &&
          listEquals(expand, other.expand) &&
          metadata == other.metadata &&
          paymentDetails == other.paymentDetails; } 
@override int get hashCode { return Object.hash(clientDeviceMetadataDetails, customerDetails, Object.hashAll(expand ?? const []), metadata, paymentDetails); } 
@override String toString() { return 'PostRadarPaymentEvaluationsRequest(clientDeviceMetadataDetails: $clientDeviceMetadataDetails, customerDetails: $customerDetails, expand: $expand, metadata: $metadata, paymentDetails: $paymentDetails)'; } 
 }
