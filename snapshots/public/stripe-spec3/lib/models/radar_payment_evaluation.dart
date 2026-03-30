// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'insights_resources_payment_evaluation_client_device_metadata.dart';import 'insights_resources_payment_evaluation_customer_details.dart';import 'insights_resources_payment_evaluation_event.dart';import 'insights_resources_payment_evaluation_insights.dart';import 'insights_resources_payment_evaluation_outcome.dart';import 'insights_resources_payment_evaluation_payment_details.dart';/// String representing the object's type. Objects of the same type share the same value.
final class RadarPaymentEvaluationObject {const RadarPaymentEvaluationObject._(this.value);

factory RadarPaymentEvaluationObject.fromJson(String json) { return switch (json) {
  'radar.payment_evaluation' => radarPaymentEvaluation,
  _ => RadarPaymentEvaluationObject._(json),
}; }

static const RadarPaymentEvaluationObject radarPaymentEvaluation = RadarPaymentEvaluationObject._('radar.payment_evaluation');

static const List<RadarPaymentEvaluationObject> values = [radarPaymentEvaluation];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarPaymentEvaluationObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarPaymentEvaluationObject($value)'; } 
 }
/// Payment Evaluations represent the risk lifecycle of an externally processed payment. It includes the Radar risk score from Stripe, payment outcome taken by the merchant or processor, and any post transaction events, such as refunds or disputes. See the [Radar API guide](/radar/multiprocessor) for integration steps.
final class RadarPaymentEvaluation {const RadarPaymentEvaluation({this.clientDeviceMetadataDetails, required this.createdAt, this.customerDetails, required this.events, required this.id, required this.insights, required this.livemode, this.metadata, required this.object, this.outcome, this.paymentDetails, });

factory RadarPaymentEvaluation.fromJson(Map<String, dynamic> json) { return RadarPaymentEvaluation(
  clientDeviceMetadataDetails: json['client_device_metadata_details'] != null ? InsightsResourcesPaymentEvaluationClientDeviceMetadata.fromJson(json['client_device_metadata_details'] as Map<String, dynamic>) : null,
  createdAt: (json['created_at'] as num).toInt(),
  customerDetails: json['customer_details'] != null ? InsightsResourcesPaymentEvaluationCustomerDetails.fromJson(json['customer_details'] as Map<String, dynamic>) : null,
  events: (json['events'] as List<dynamic>).map((e) => InsightsResourcesPaymentEvaluationEvent.fromJson(e as Map<String, dynamic>)).toList(),
  id: json['id'] as String,
  insights: InsightsResourcesPaymentEvaluationInsights.fromJson(json['insights'] as Map<String, dynamic>),
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  object: RadarPaymentEvaluationObject.fromJson(json['object'] as String),
  outcome: json['outcome'] != null ? InsightsResourcesPaymentEvaluationOutcome.fromJson(json['outcome'] as Map<String, dynamic>) : null,
  paymentDetails: json['payment_details'] != null ? InsightsResourcesPaymentEvaluationPaymentDetails.fromJson(json['payment_details'] as Map<String, dynamic>) : null,
); }

final InsightsResourcesPaymentEvaluationClientDeviceMetadata? clientDeviceMetadataDetails;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int createdAt;

final InsightsResourcesPaymentEvaluationCustomerDetails? customerDetails;

/// Event information associated with the payment evaluation, such as refunds, dispute, early fraud warnings, or user interventions.
final List<InsightsResourcesPaymentEvaluationEvent> events;

/// Unique identifier for the object.
final String id;

final InsightsResourcesPaymentEvaluationInsights insights;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// String representing the object's type. Objects of the same type share the same value.
final RadarPaymentEvaluationObject object;

/// Indicates the final outcome for the payment evaluation.
final InsightsResourcesPaymentEvaluationOutcome? outcome;

final InsightsResourcesPaymentEvaluationPaymentDetails? paymentDetails;

Map<String, dynamic> toJson() { return {
  if (clientDeviceMetadataDetails != null) 'client_device_metadata_details': clientDeviceMetadataDetails?.toJson(),
  'created_at': createdAt,
  if (customerDetails != null) 'customer_details': customerDetails?.toJson(),
  'events': events.map((e) => e.toJson()).toList(),
  'id': id,
  'insights': insights.toJson(),
  'livemode': livemode,
  'metadata': ?metadata,
  'object': object.toJson(),
  if (outcome != null) 'outcome': outcome?.toJson(),
  if (paymentDetails != null) 'payment_details': paymentDetails?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('events') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('insights') &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object'); } 
RadarPaymentEvaluation copyWith({InsightsResourcesPaymentEvaluationClientDeviceMetadata Function()? clientDeviceMetadataDetails, int? createdAt, InsightsResourcesPaymentEvaluationCustomerDetails Function()? customerDetails, List<InsightsResourcesPaymentEvaluationEvent>? events, String? id, InsightsResourcesPaymentEvaluationInsights? insights, bool? livemode, Map<String, String>? Function()? metadata, RadarPaymentEvaluationObject? object, InsightsResourcesPaymentEvaluationOutcome? Function()? outcome, InsightsResourcesPaymentEvaluationPaymentDetails Function()? paymentDetails, }) { return RadarPaymentEvaluation(
  clientDeviceMetadataDetails: clientDeviceMetadataDetails != null ? clientDeviceMetadataDetails() : this.clientDeviceMetadataDetails,
  createdAt: createdAt ?? this.createdAt,
  customerDetails: customerDetails != null ? customerDetails() : this.customerDetails,
  events: events ?? this.events,
  id: id ?? this.id,
  insights: insights ?? this.insights,
  livemode: livemode ?? this.livemode,
  metadata: metadata != null ? metadata() : this.metadata,
  object: object ?? this.object,
  outcome: outcome != null ? outcome() : this.outcome,
  paymentDetails: paymentDetails != null ? paymentDetails() : this.paymentDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarPaymentEvaluation &&
          clientDeviceMetadataDetails == other.clientDeviceMetadataDetails &&
          createdAt == other.createdAt &&
          customerDetails == other.customerDetails &&
          listEquals(events, other.events) &&
          id == other.id &&
          insights == other.insights &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          outcome == other.outcome &&
          paymentDetails == other.paymentDetails; } 
@override int get hashCode { return Object.hash(clientDeviceMetadataDetails, createdAt, customerDetails, Object.hashAll(events), id, insights, livemode, metadata, object, outcome, paymentDetails); } 
@override String toString() { return 'RadarPaymentEvaluation(clientDeviceMetadataDetails: $clientDeviceMetadataDetails, createdAt: $createdAt, customerDetails: $customerDetails, events: $events, id: $id, insights: $insights, livemode: $livemode, metadata: $metadata, object: $object, outcome: $outcome, paymentDetails: $paymentDetails)'; } 
 }
