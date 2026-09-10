// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'service_not_as_described_additional_documentation.dart';import 'service_not_as_described_canceled_at.dart';import 'service_not_as_described_cancellation_reason.dart';import 'service_not_as_described_explanation.dart';import 'service_not_as_described_received_at.dart';@immutable final class ServiceNotAsDescribed {const ServiceNotAsDescribed({this.additionalDocumentation, this.canceledAt, this.cancellationReason, this.explanation, this.receivedAt, });

factory ServiceNotAsDescribed.fromJson(Map<String, dynamic> json) { return ServiceNotAsDescribed(
  additionalDocumentation: json['additional_documentation'] != null ? ServiceNotAsDescribedAdditionalDocumentation.fromJson(json['additional_documentation']) : null,
  canceledAt: json['canceled_at'] != null ? ServiceNotAsDescribedCanceledAt.fromJson(json['canceled_at']) : null,
  cancellationReason: json['cancellation_reason'] != null ? ServiceNotAsDescribedCancellationReason.fromJson(json['cancellation_reason']) : null,
  explanation: json['explanation'] != null ? ServiceNotAsDescribedExplanation.fromJson(json['explanation']) : null,
  receivedAt: json['received_at'] != null ? ServiceNotAsDescribedReceivedAt.fromJson(json['received_at']) : null,
); }

final ServiceNotAsDescribedAdditionalDocumentation? additionalDocumentation;

final ServiceNotAsDescribedCanceledAt? canceledAt;

final ServiceNotAsDescribedCancellationReason? cancellationReason;

final ServiceNotAsDescribedExplanation? explanation;

final ServiceNotAsDescribedReceivedAt? receivedAt;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  if (canceledAt != null) 'canceled_at': canceledAt?.toJson(),
  if (cancellationReason != null) 'cancellation_reason': cancellationReason?.toJson(),
  if (explanation != null) 'explanation': explanation?.toJson(),
  if (receivedAt != null) 'received_at': receivedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'canceled_at', 'cancellation_reason', 'explanation', 'received_at'}.contains(key)); } 
ServiceNotAsDescribed copyWith({ServiceNotAsDescribedAdditionalDocumentation? Function()? additionalDocumentation, ServiceNotAsDescribedCanceledAt? Function()? canceledAt, ServiceNotAsDescribedCancellationReason? Function()? cancellationReason, ServiceNotAsDescribedExplanation? Function()? explanation, ServiceNotAsDescribedReceivedAt? Function()? receivedAt, }) { return ServiceNotAsDescribed(
  additionalDocumentation: additionalDocumentation != null ? additionalDocumentation() : this.additionalDocumentation,
  canceledAt: canceledAt != null ? canceledAt() : this.canceledAt,
  cancellationReason: cancellationReason != null ? cancellationReason() : this.cancellationReason,
  explanation: explanation != null ? explanation() : this.explanation,
  receivedAt: receivedAt != null ? receivedAt() : this.receivedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ServiceNotAsDescribed &&
          additionalDocumentation == other.additionalDocumentation &&
          canceledAt == other.canceledAt &&
          cancellationReason == other.cancellationReason &&
          explanation == other.explanation &&
          receivedAt == other.receivedAt; } 
@override int get hashCode { return Object.hash(additionalDocumentation, canceledAt, cancellationReason, explanation, receivedAt); } 
@override String toString() { return 'ServiceNotAsDescribed(additionalDocumentation: $additionalDocumentation, canceledAt: $canceledAt, cancellationReason: $cancellationReason, explanation: $explanation, receivedAt: $receivedAt)'; } 
 }
