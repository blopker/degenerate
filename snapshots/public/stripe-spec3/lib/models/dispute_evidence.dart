// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dispute_enhanced_evidence.dart';import 'dispute_evidence_cancellation_policy.dart';import 'dispute_evidence_customer_communication.dart';import 'dispute_evidence_customer_signature.dart';import 'dispute_evidence_duplicate_charge_documentation.dart';import 'dispute_evidence_receipt.dart';import 'dispute_evidence_refund_policy.dart';import 'dispute_evidence_service_documentation.dart';import 'dispute_evidence_shipping_documentation.dart';import 'dispute_evidence_uncategorized_file.dart';import 'file.dart';/// 
@immutable final class DisputeEvidence {const DisputeEvidence({required this.enhancedEvidence, this.accessActivityLog = const Omittable.absent(), this.billingAddress = const Omittable.absent(), this.cancellationPolicy = const Omittable.absent(), this.cancellationPolicyDisclosure = const Omittable.absent(), this.cancellationRebuttal = const Omittable.absent(), this.customerCommunication = const Omittable.absent(), this.customerEmailAddress = const Omittable.absent(), this.customerName = const Omittable.absent(), this.customerPurchaseIp = const Omittable.absent(), this.customerSignature = const Omittable.absent(), this.duplicateChargeDocumentation = const Omittable.absent(), this.duplicateChargeExplanation = const Omittable.absent(), this.duplicateChargeId = const Omittable.absent(), this.productDescription = const Omittable.absent(), this.receipt = const Omittable.absent(), this.refundPolicy = const Omittable.absent(), this.refundPolicyDisclosure = const Omittable.absent(), this.refundRefusalExplanation = const Omittable.absent(), this.serviceDate = const Omittable.absent(), this.serviceDocumentation = const Omittable.absent(), this.shippingAddress = const Omittable.absent(), this.shippingCarrier = const Omittable.absent(), this.shippingDate = const Omittable.absent(), this.shippingDocumentation = const Omittable.absent(), this.shippingTrackingNumber = const Omittable.absent(), this.uncategorizedFile = const Omittable.absent(), this.uncategorizedText = const Omittable.absent(), });

factory DisputeEvidence.fromJson(Map<String, dynamic> json) { return DisputeEvidence(
  accessActivityLog: json.containsKey('access_activity_log') ? Omittable(json['access_activity_log'] as String?) : const Omittable.absent(),
  billingAddress: json.containsKey('billing_address') ? Omittable(json['billing_address'] as String?) : const Omittable.absent(),
  cancellationPolicy: json.containsKey('cancellation_policy') ? Omittable(json['cancellation_policy'] != null ? OneOf2.parse(json['cancellation_policy'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  cancellationPolicyDisclosure: json.containsKey('cancellation_policy_disclosure') ? Omittable(json['cancellation_policy_disclosure'] as String?) : const Omittable.absent(),
  cancellationRebuttal: json.containsKey('cancellation_rebuttal') ? Omittable(json['cancellation_rebuttal'] as String?) : const Omittable.absent(),
  customerCommunication: json.containsKey('customer_communication') ? Omittable(json['customer_communication'] != null ? OneOf2.parse(json['customer_communication'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  customerEmailAddress: json.containsKey('customer_email_address') ? Omittable(json['customer_email_address'] as String?) : const Omittable.absent(),
  customerName: json.containsKey('customer_name') ? Omittable(json['customer_name'] as String?) : const Omittable.absent(),
  customerPurchaseIp: json.containsKey('customer_purchase_ip') ? Omittable(json['customer_purchase_ip'] as String?) : const Omittable.absent(),
  customerSignature: json.containsKey('customer_signature') ? Omittable(json['customer_signature'] != null ? OneOf2.parse(json['customer_signature'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  duplicateChargeDocumentation: json.containsKey('duplicate_charge_documentation') ? Omittable(json['duplicate_charge_documentation'] != null ? OneOf2.parse(json['duplicate_charge_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  duplicateChargeExplanation: json.containsKey('duplicate_charge_explanation') ? Omittable(json['duplicate_charge_explanation'] as String?) : const Omittable.absent(),
  duplicateChargeId: json.containsKey('duplicate_charge_id') ? Omittable(json['duplicate_charge_id'] as String?) : const Omittable.absent(),
  enhancedEvidence: DisputeEnhancedEvidence.fromJson(json['enhanced_evidence'] as Map<String, dynamic>),
  productDescription: json.containsKey('product_description') ? Omittable(json['product_description'] as String?) : const Omittable.absent(),
  receipt: json.containsKey('receipt') ? Omittable(json['receipt'] != null ? OneOf2.parse(json['receipt'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  refundPolicy: json.containsKey('refund_policy') ? Omittable(json['refund_policy'] != null ? OneOf2.parse(json['refund_policy'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  refundPolicyDisclosure: json.containsKey('refund_policy_disclosure') ? Omittable(json['refund_policy_disclosure'] as String?) : const Omittable.absent(),
  refundRefusalExplanation: json.containsKey('refund_refusal_explanation') ? Omittable(json['refund_refusal_explanation'] as String?) : const Omittable.absent(),
  serviceDate: json.containsKey('service_date') ? Omittable(json['service_date'] as String?) : const Omittable.absent(),
  serviceDocumentation: json.containsKey('service_documentation') ? Omittable(json['service_documentation'] != null ? OneOf2.parse(json['service_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  shippingAddress: json.containsKey('shipping_address') ? Omittable(json['shipping_address'] as String?) : const Omittable.absent(),
  shippingCarrier: json.containsKey('shipping_carrier') ? Omittable(json['shipping_carrier'] as String?) : const Omittable.absent(),
  shippingDate: json.containsKey('shipping_date') ? Omittable(json['shipping_date'] as String?) : const Omittable.absent(),
  shippingDocumentation: json.containsKey('shipping_documentation') ? Omittable(json['shipping_documentation'] != null ? OneOf2.parse(json['shipping_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  shippingTrackingNumber: json.containsKey('shipping_tracking_number') ? Omittable(json['shipping_tracking_number'] as String?) : const Omittable.absent(),
  uncategorizedFile: json.containsKey('uncategorized_file') ? Omittable(json['uncategorized_file'] != null ? OneOf2.parse(json['uncategorized_file'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  uncategorizedText: json.containsKey('uncategorized_text') ? Omittable(json['uncategorized_text'] as String?) : const Omittable.absent(),
); }

/// Any server or activity logs showing proof that the customer accessed or downloaded the purchased digital product. This information should include IP addresses, corresponding timestamps, and any detailed recorded activity.
final Omittable<String?> accessActivityLog;

/// The billing address provided by the customer.
final Omittable<String?> billingAddress;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your subscription cancellation policy, as shown to the customer.
final Omittable<DisputeEvidenceCancellationPolicy?> cancellationPolicy;

/// An explanation of how and when the customer was shown your refund policy prior to purchase.
final Omittable<String?> cancellationPolicyDisclosure;

/// A justification for why the customer's subscription was not canceled.
final Omittable<String?> cancellationRebuttal;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service.
final Omittable<DisputeEvidenceCustomerCommunication?> customerCommunication;

/// The email address of the customer.
final Omittable<String?> customerEmailAddress;

/// The name of the customer.
final Omittable<String?> customerName;

/// The IP address that the customer used when making the purchase.
final Omittable<String?> customerPurchaseIp;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A relevant document or contract showing the customer's signature.
final Omittable<DisputeEvidenceCustomerSignature?> customerSignature;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate.
final Omittable<DisputeEvidenceDuplicateChargeDocumentation?> duplicateChargeDocumentation;

/// An explanation of the difference between the disputed charge versus the prior charge that appears to be a duplicate.
final Omittable<String?> duplicateChargeExplanation;

/// The Stripe ID for the prior charge which appears to be a duplicate of the disputed charge.
final Omittable<String?> duplicateChargeId;

final DisputeEnhancedEvidence enhancedEvidence;

/// A description of the product or service that was sold.
final Omittable<String?> productDescription;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any receipt or message sent to the customer notifying them of the charge.
final Omittable<DisputeEvidenceReceipt?> receipt;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your refund policy, as shown to the customer.
final Omittable<DisputeEvidenceRefundPolicy?> refundPolicy;

/// Documentation demonstrating that the customer was shown your refund policy prior to purchase.
final Omittable<String?> refundPolicyDisclosure;

/// A justification for why the customer is not entitled to a refund.
final Omittable<String?> refundRefusalExplanation;

/// The date on which the customer received or began receiving the purchased service, in a clear human-readable format.
final Omittable<String?> serviceDate;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement.
final Omittable<DisputeEvidenceServiceDocumentation?> serviceDocumentation;

/// The address to which a physical product was shipped. You should try to include as complete address information as possible.
final Omittable<String?> shippingAddress;

/// The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc. If multiple carriers were used for this purchase, please separate them with commas.
final Omittable<String?> shippingCarrier;

/// The date on which a physical product began its route to the shipping address, in a clear human-readable format.
final Omittable<String?> shippingDate;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer's full shipping address, if possible.
final Omittable<DisputeEvidenceShippingDocumentation?> shippingDocumentation;

/// The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
final Omittable<String?> shippingTrackingNumber;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any additional evidence or statements.
final Omittable<DisputeEvidenceUncategorizedFile?> uncategorizedFile;

/// Any additional evidence or statements.
final Omittable<String?> uncategorizedText;

Map<String, dynamic> toJson() { return {
  if (accessActivityLog.isPresent) 'access_activity_log': accessActivityLog.value,
  if (billingAddress.isPresent) 'billing_address': billingAddress.value,
  if (cancellationPolicy.isPresent) 'cancellation_policy': cancellationPolicy.value?.toJson(),
  if (cancellationPolicyDisclosure.isPresent) 'cancellation_policy_disclosure': cancellationPolicyDisclosure.value,
  if (cancellationRebuttal.isPresent) 'cancellation_rebuttal': cancellationRebuttal.value,
  if (customerCommunication.isPresent) 'customer_communication': customerCommunication.value?.toJson(),
  if (customerEmailAddress.isPresent) 'customer_email_address': customerEmailAddress.value,
  if (customerName.isPresent) 'customer_name': customerName.value,
  if (customerPurchaseIp.isPresent) 'customer_purchase_ip': customerPurchaseIp.value,
  if (customerSignature.isPresent) 'customer_signature': customerSignature.value?.toJson(),
  if (duplicateChargeDocumentation.isPresent) 'duplicate_charge_documentation': duplicateChargeDocumentation.value?.toJson(),
  if (duplicateChargeExplanation.isPresent) 'duplicate_charge_explanation': duplicateChargeExplanation.value,
  if (duplicateChargeId.isPresent) 'duplicate_charge_id': duplicateChargeId.value,
  'enhanced_evidence': enhancedEvidence.toJson(),
  if (productDescription.isPresent) 'product_description': productDescription.value,
  if (receipt.isPresent) 'receipt': receipt.value?.toJson(),
  if (refundPolicy.isPresent) 'refund_policy': refundPolicy.value?.toJson(),
  if (refundPolicyDisclosure.isPresent) 'refund_policy_disclosure': refundPolicyDisclosure.value,
  if (refundRefusalExplanation.isPresent) 'refund_refusal_explanation': refundRefusalExplanation.value,
  if (serviceDate.isPresent) 'service_date': serviceDate.value,
  if (serviceDocumentation.isPresent) 'service_documentation': serviceDocumentation.value?.toJson(),
  if (shippingAddress.isPresent) 'shipping_address': shippingAddress.value,
  if (shippingCarrier.isPresent) 'shipping_carrier': shippingCarrier.value,
  if (shippingDate.isPresent) 'shipping_date': shippingDate.value,
  if (shippingDocumentation.isPresent) 'shipping_documentation': shippingDocumentation.value?.toJson(),
  if (shippingTrackingNumber.isPresent) 'shipping_tracking_number': shippingTrackingNumber.value,
  if (uncategorizedFile.isPresent) 'uncategorized_file': uncategorizedFile.value?.toJson(),
  if (uncategorizedText.isPresent) 'uncategorized_text': uncategorizedText.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enhanced_evidence'); } 
DisputeEvidence copyWith({Omittable<String?>? accessActivityLog, Omittable<String?>? billingAddress, Omittable<DisputeEvidenceCancellationPolicy?>? cancellationPolicy, Omittable<String?>? cancellationPolicyDisclosure, Omittable<String?>? cancellationRebuttal, Omittable<DisputeEvidenceCustomerCommunication?>? customerCommunication, Omittable<String?>? customerEmailAddress, Omittable<String?>? customerName, Omittable<String?>? customerPurchaseIp, Omittable<DisputeEvidenceCustomerSignature?>? customerSignature, Omittable<DisputeEvidenceDuplicateChargeDocumentation?>? duplicateChargeDocumentation, Omittable<String?>? duplicateChargeExplanation, Omittable<String?>? duplicateChargeId, DisputeEnhancedEvidence? enhancedEvidence, Omittable<String?>? productDescription, Omittable<DisputeEvidenceReceipt?>? receipt, Omittable<DisputeEvidenceRefundPolicy?>? refundPolicy, Omittable<String?>? refundPolicyDisclosure, Omittable<String?>? refundRefusalExplanation, Omittable<String?>? serviceDate, Omittable<DisputeEvidenceServiceDocumentation?>? serviceDocumentation, Omittable<String?>? shippingAddress, Omittable<String?>? shippingCarrier, Omittable<String?>? shippingDate, Omittable<DisputeEvidenceShippingDocumentation?>? shippingDocumentation, Omittable<String?>? shippingTrackingNumber, Omittable<DisputeEvidenceUncategorizedFile?>? uncategorizedFile, Omittable<String?>? uncategorizedText, }) { return DisputeEvidence(
  accessActivityLog: accessActivityLog ?? this.accessActivityLog,
  billingAddress: billingAddress ?? this.billingAddress,
  cancellationPolicy: cancellationPolicy ?? this.cancellationPolicy,
  cancellationPolicyDisclosure: cancellationPolicyDisclosure ?? this.cancellationPolicyDisclosure,
  cancellationRebuttal: cancellationRebuttal ?? this.cancellationRebuttal,
  customerCommunication: customerCommunication ?? this.customerCommunication,
  customerEmailAddress: customerEmailAddress ?? this.customerEmailAddress,
  customerName: customerName ?? this.customerName,
  customerPurchaseIp: customerPurchaseIp ?? this.customerPurchaseIp,
  customerSignature: customerSignature ?? this.customerSignature,
  duplicateChargeDocumentation: duplicateChargeDocumentation ?? this.duplicateChargeDocumentation,
  duplicateChargeExplanation: duplicateChargeExplanation ?? this.duplicateChargeExplanation,
  duplicateChargeId: duplicateChargeId ?? this.duplicateChargeId,
  enhancedEvidence: enhancedEvidence ?? this.enhancedEvidence,
  productDescription: productDescription ?? this.productDescription,
  receipt: receipt ?? this.receipt,
  refundPolicy: refundPolicy ?? this.refundPolicy,
  refundPolicyDisclosure: refundPolicyDisclosure ?? this.refundPolicyDisclosure,
  refundRefusalExplanation: refundRefusalExplanation ?? this.refundRefusalExplanation,
  serviceDate: serviceDate ?? this.serviceDate,
  serviceDocumentation: serviceDocumentation ?? this.serviceDocumentation,
  shippingAddress: shippingAddress ?? this.shippingAddress,
  shippingCarrier: shippingCarrier ?? this.shippingCarrier,
  shippingDate: shippingDate ?? this.shippingDate,
  shippingDocumentation: shippingDocumentation ?? this.shippingDocumentation,
  shippingTrackingNumber: shippingTrackingNumber ?? this.shippingTrackingNumber,
  uncategorizedFile: uncategorizedFile ?? this.uncategorizedFile,
  uncategorizedText: uncategorizedText ?? this.uncategorizedText,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DisputeEvidence &&
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
@override String toString() { return 'DisputeEvidence(accessActivityLog: $accessActivityLog, billingAddress: $billingAddress, cancellationPolicy: $cancellationPolicy, cancellationPolicyDisclosure: $cancellationPolicyDisclosure, cancellationRebuttal: $cancellationRebuttal, customerCommunication: $customerCommunication, customerEmailAddress: $customerEmailAddress, customerName: $customerName, customerPurchaseIp: $customerPurchaseIp, customerSignature: $customerSignature, duplicateChargeDocumentation: $duplicateChargeDocumentation, duplicateChargeExplanation: $duplicateChargeExplanation, duplicateChargeId: $duplicateChargeId, enhancedEvidence: $enhancedEvidence, productDescription: $productDescription, receipt: $receipt, refundPolicy: $refundPolicy, refundPolicyDisclosure: $refundPolicyDisclosure, refundRefusalExplanation: $refundRefusalExplanation, serviceDate: $serviceDate, serviceDocumentation: $serviceDocumentation, shippingAddress: $shippingAddress, shippingCarrier: $shippingCarrier, shippingDate: $shippingDate, shippingDocumentation: $shippingDocumentation, shippingTrackingNumber: $shippingTrackingNumber, uncategorizedFile: $uncategorizedFile, uncategorizedText: $uncategorizedText)'; } 
 }
