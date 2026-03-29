// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enhanced_evidence2.dart';import 'post_disputes_dispute_request_evidence_enhanced_evidence.dart';/// Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
final class PostDisputesDisputeRequestEvidence {const PostDisputesDisputeRequestEvidence({this.accessActivityLog, this.billingAddress, this.cancellationPolicy, this.cancellationPolicyDisclosure, this.cancellationRebuttal, this.customerCommunication, this.customerEmailAddress, this.customerName, this.customerPurchaseIp, this.customerSignature, this.duplicateChargeDocumentation, this.duplicateChargeExplanation, this.duplicateChargeId, this.enhancedEvidence, this.productDescription, this.receipt, this.refundPolicy, this.refundPolicyDisclosure, this.refundRefusalExplanation, this.serviceDate, this.serviceDocumentation, this.shippingAddress, this.shippingCarrier, this.shippingDate, this.shippingDocumentation, this.shippingTrackingNumber, this.uncategorizedFile, this.uncategorizedText, });

factory PostDisputesDisputeRequestEvidence.fromJson(Map<String, dynamic> json) { return PostDisputesDisputeRequestEvidence(
  accessActivityLog: json['access_activity_log'] as String?,
  billingAddress: json['billing_address'] as String?,
  cancellationPolicy: json['cancellation_policy'] as String?,
  cancellationPolicyDisclosure: json['cancellation_policy_disclosure'] as String?,
  cancellationRebuttal: json['cancellation_rebuttal'] as String?,
  customerCommunication: json['customer_communication'] as String?,
  customerEmailAddress: json['customer_email_address'] as String?,
  customerName: json['customer_name'] as String?,
  customerPurchaseIp: json['customer_purchase_ip'] as String?,
  customerSignature: json['customer_signature'] as String?,
  duplicateChargeDocumentation: json['duplicate_charge_documentation'] as String?,
  duplicateChargeExplanation: json['duplicate_charge_explanation'] as String?,
  duplicateChargeId: json['duplicate_charge_id'] as String?,
  enhancedEvidence: json['enhanced_evidence'] != null ? OneOf2.parse(json['enhanced_evidence'], fromA: (v) => EnhancedEvidence2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostDisputesDisputeRequestEvidenceEnhancedEvidenceVariant2.fromJson(v as String),) : null,
  productDescription: json['product_description'] as String?,
  receipt: json['receipt'] as String?,
  refundPolicy: json['refund_policy'] as String?,
  refundPolicyDisclosure: json['refund_policy_disclosure'] as String?,
  refundRefusalExplanation: json['refund_refusal_explanation'] as String?,
  serviceDate: json['service_date'] as String?,
  serviceDocumentation: json['service_documentation'] as String?,
  shippingAddress: json['shipping_address'] as String?,
  shippingCarrier: json['shipping_carrier'] as String?,
  shippingDate: json['shipping_date'] as String?,
  shippingDocumentation: json['shipping_documentation'] as String?,
  shippingTrackingNumber: json['shipping_tracking_number'] as String?,
  uncategorizedFile: json['uncategorized_file'] as String?,
  uncategorizedText: json['uncategorized_text'] as String?,
); }

final String? accessActivityLog;

final String? billingAddress;

final String? cancellationPolicy;

final String? cancellationPolicyDisclosure;

final String? cancellationRebuttal;

final String? customerCommunication;

final String? customerEmailAddress;

final String? customerName;

final String? customerPurchaseIp;

final String? customerSignature;

final String? duplicateChargeDocumentation;

final String? duplicateChargeExplanation;

final String? duplicateChargeId;

final PostDisputesDisputeRequestEvidenceEnhancedEvidence? enhancedEvidence;

final String? productDescription;

final String? receipt;

final String? refundPolicy;

final String? refundPolicyDisclosure;

final String? refundRefusalExplanation;

final String? serviceDate;

final String? serviceDocumentation;

final String? shippingAddress;

final String? shippingCarrier;

final String? shippingDate;

final String? shippingDocumentation;

final String? shippingTrackingNumber;

final String? uncategorizedFile;

final String? uncategorizedText;

Map<String, dynamic> toJson() { return {
  'access_activity_log': ?accessActivityLog,
  'billing_address': ?billingAddress,
  'cancellation_policy': ?cancellationPolicy,
  'cancellation_policy_disclosure': ?cancellationPolicyDisclosure,
  'cancellation_rebuttal': ?cancellationRebuttal,
  'customer_communication': ?customerCommunication,
  'customer_email_address': ?customerEmailAddress,
  'customer_name': ?customerName,
  'customer_purchase_ip': ?customerPurchaseIp,
  'customer_signature': ?customerSignature,
  'duplicate_charge_documentation': ?duplicateChargeDocumentation,
  'duplicate_charge_explanation': ?duplicateChargeExplanation,
  'duplicate_charge_id': ?duplicateChargeId,
  if (enhancedEvidence != null) 'enhanced_evidence': enhancedEvidence?.toJson(),
  'product_description': ?productDescription,
  'receipt': ?receipt,
  'refund_policy': ?refundPolicy,
  'refund_policy_disclosure': ?refundPolicyDisclosure,
  'refund_refusal_explanation': ?refundRefusalExplanation,
  'service_date': ?serviceDate,
  'service_documentation': ?serviceDocumentation,
  'shipping_address': ?shippingAddress,
  'shipping_carrier': ?shippingCarrier,
  'shipping_date': ?shippingDate,
  'shipping_documentation': ?shippingDocumentation,
  'shipping_tracking_number': ?shippingTrackingNumber,
  'uncategorized_file': ?uncategorizedFile,
  'uncategorized_text': ?uncategorizedText,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'access_activity_log', 'billing_address', 'cancellation_policy', 'cancellation_policy_disclosure', 'cancellation_rebuttal', 'customer_communication', 'customer_email_address', 'customer_name', 'customer_purchase_ip', 'customer_signature', 'duplicate_charge_documentation', 'duplicate_charge_explanation', 'duplicate_charge_id', 'enhanced_evidence', 'product_description', 'receipt', 'refund_policy', 'refund_policy_disclosure', 'refund_refusal_explanation', 'service_date', 'service_documentation', 'shipping_address', 'shipping_carrier', 'shipping_date', 'shipping_documentation', 'shipping_tracking_number', 'uncategorized_file', 'uncategorized_text'}.contains(key)); } 
PostDisputesDisputeRequestEvidence copyWith({String Function()? accessActivityLog, String Function()? billingAddress, String Function()? cancellationPolicy, String Function()? cancellationPolicyDisclosure, String Function()? cancellationRebuttal, String Function()? customerCommunication, String Function()? customerEmailAddress, String Function()? customerName, String Function()? customerPurchaseIp, String Function()? customerSignature, String Function()? duplicateChargeDocumentation, String Function()? duplicateChargeExplanation, String Function()? duplicateChargeId, PostDisputesDisputeRequestEvidenceEnhancedEvidence Function()? enhancedEvidence, String Function()? productDescription, String Function()? receipt, String Function()? refundPolicy, String Function()? refundPolicyDisclosure, String Function()? refundRefusalExplanation, String Function()? serviceDate, String Function()? serviceDocumentation, String Function()? shippingAddress, String Function()? shippingCarrier, String Function()? shippingDate, String Function()? shippingDocumentation, String Function()? shippingTrackingNumber, String Function()? uncategorizedFile, String Function()? uncategorizedText, }) { return PostDisputesDisputeRequestEvidence(
  accessActivityLog: accessActivityLog != null ? accessActivityLog() : this.accessActivityLog,
  billingAddress: billingAddress != null ? billingAddress() : this.billingAddress,
  cancellationPolicy: cancellationPolicy != null ? cancellationPolicy() : this.cancellationPolicy,
  cancellationPolicyDisclosure: cancellationPolicyDisclosure != null ? cancellationPolicyDisclosure() : this.cancellationPolicyDisclosure,
  cancellationRebuttal: cancellationRebuttal != null ? cancellationRebuttal() : this.cancellationRebuttal,
  customerCommunication: customerCommunication != null ? customerCommunication() : this.customerCommunication,
  customerEmailAddress: customerEmailAddress != null ? customerEmailAddress() : this.customerEmailAddress,
  customerName: customerName != null ? customerName() : this.customerName,
  customerPurchaseIp: customerPurchaseIp != null ? customerPurchaseIp() : this.customerPurchaseIp,
  customerSignature: customerSignature != null ? customerSignature() : this.customerSignature,
  duplicateChargeDocumentation: duplicateChargeDocumentation != null ? duplicateChargeDocumentation() : this.duplicateChargeDocumentation,
  duplicateChargeExplanation: duplicateChargeExplanation != null ? duplicateChargeExplanation() : this.duplicateChargeExplanation,
  duplicateChargeId: duplicateChargeId != null ? duplicateChargeId() : this.duplicateChargeId,
  enhancedEvidence: enhancedEvidence != null ? enhancedEvidence() : this.enhancedEvidence,
  productDescription: productDescription != null ? productDescription() : this.productDescription,
  receipt: receipt != null ? receipt() : this.receipt,
  refundPolicy: refundPolicy != null ? refundPolicy() : this.refundPolicy,
  refundPolicyDisclosure: refundPolicyDisclosure != null ? refundPolicyDisclosure() : this.refundPolicyDisclosure,
  refundRefusalExplanation: refundRefusalExplanation != null ? refundRefusalExplanation() : this.refundRefusalExplanation,
  serviceDate: serviceDate != null ? serviceDate() : this.serviceDate,
  serviceDocumentation: serviceDocumentation != null ? serviceDocumentation() : this.serviceDocumentation,
  shippingAddress: shippingAddress != null ? shippingAddress() : this.shippingAddress,
  shippingCarrier: shippingCarrier != null ? shippingCarrier() : this.shippingCarrier,
  shippingDate: shippingDate != null ? shippingDate() : this.shippingDate,
  shippingDocumentation: shippingDocumentation != null ? shippingDocumentation() : this.shippingDocumentation,
  shippingTrackingNumber: shippingTrackingNumber != null ? shippingTrackingNumber() : this.shippingTrackingNumber,
  uncategorizedFile: uncategorizedFile != null ? uncategorizedFile() : this.uncategorizedFile,
  uncategorizedText: uncategorizedText != null ? uncategorizedText() : this.uncategorizedText,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDisputesDisputeRequestEvidence &&
          accessActivityLog == other.accessActivityLog &&
          billingAddress == other.billingAddress &&
          cancellationPolicy == other.cancellationPolicy &&
          cancellationPolicyDisclosure == other.cancellationPolicyDisclosure &&
          cancellationRebuttal == other.cancellationRebuttal &&
          customerCommunication == other.customerCommunication &&
          customerEmailAddress == other.customerEmailAddress &&
          customerName == other.customerName &&
          customerPurchaseIp == other.customerPurchaseIp &&
          customerSignature == other.customerSignature &&
          duplicateChargeDocumentation == other.duplicateChargeDocumentation &&
          duplicateChargeExplanation == other.duplicateChargeExplanation &&
          duplicateChargeId == other.duplicateChargeId &&
          enhancedEvidence == other.enhancedEvidence &&
          productDescription == other.productDescription &&
          receipt == other.receipt &&
          refundPolicy == other.refundPolicy &&
          refundPolicyDisclosure == other.refundPolicyDisclosure &&
          refundRefusalExplanation == other.refundRefusalExplanation &&
          serviceDate == other.serviceDate &&
          serviceDocumentation == other.serviceDocumentation &&
          shippingAddress == other.shippingAddress &&
          shippingCarrier == other.shippingCarrier &&
          shippingDate == other.shippingDate &&
          shippingDocumentation == other.shippingDocumentation &&
          shippingTrackingNumber == other.shippingTrackingNumber &&
          uncategorizedFile == other.uncategorizedFile &&
          uncategorizedText == other.uncategorizedText; } 
@override int get hashCode { return Object.hashAll([accessActivityLog, billingAddress, cancellationPolicy, cancellationPolicyDisclosure, cancellationRebuttal, customerCommunication, customerEmailAddress, customerName, customerPurchaseIp, customerSignature, duplicateChargeDocumentation, duplicateChargeExplanation, duplicateChargeId, enhancedEvidence, productDescription, receipt, refundPolicy, refundPolicyDisclosure, refundRefusalExplanation, serviceDate, serviceDocumentation, shippingAddress, shippingCarrier, shippingDate, shippingDocumentation, shippingTrackingNumber, uncategorizedFile, uncategorizedText]); } 
@override String toString() { return 'PostDisputesDisputeRequestEvidence(accessActivityLog: $accessActivityLog, billingAddress: $billingAddress, cancellationPolicy: $cancellationPolicy, cancellationPolicyDisclosure: $cancellationPolicyDisclosure, cancellationRebuttal: $cancellationRebuttal, customerCommunication: $customerCommunication, customerEmailAddress: $customerEmailAddress, customerName: $customerName, customerPurchaseIp: $customerPurchaseIp, customerSignature: $customerSignature, duplicateChargeDocumentation: $duplicateChargeDocumentation, duplicateChargeExplanation: $duplicateChargeExplanation, duplicateChargeId: $duplicateChargeId, enhancedEvidence: $enhancedEvidence, productDescription: $productDescription, receipt: $receipt, refundPolicy: $refundPolicy, refundPolicyDisclosure: $refundPolicyDisclosure, refundRefusalExplanation: $refundRefusalExplanation, serviceDate: $serviceDate, serviceDocumentation: $serviceDocumentation, shippingAddress: $shippingAddress, shippingCarrier: $shippingCarrier, shippingDate: $shippingDate, shippingDocumentation: $shippingDocumentation, shippingTrackingNumber: $shippingTrackingNumber, uncategorizedFile: $uncategorizedFile, uncategorizedText: $uncategorizedText)'; } 
 }
