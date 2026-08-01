// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dispute_transaction_shipping_address.dart';/// 
@immutable final class DisputeVisaCompellingEvidence3PriorUndisputedTransaction {const DisputeVisaCompellingEvidence3PriorUndisputedTransaction({required this.charge, this.customerAccountId = const Omittable.absent(), this.customerDeviceFingerprint = const Omittable.absent(), this.customerDeviceId = const Omittable.absent(), this.customerEmailAddress = const Omittable.absent(), this.customerPurchaseIp = const Omittable.absent(), this.productDescription = const Omittable.absent(), this.shippingAddress = const Omittable.absent(), });

factory DisputeVisaCompellingEvidence3PriorUndisputedTransaction.fromJson(Map<String, dynamic> json) { return DisputeVisaCompellingEvidence3PriorUndisputedTransaction(
  charge: json['charge'] as String,
  customerAccountId: json.containsKey('customer_account_id') ? Omittable(json['customer_account_id'] as String?) : const Omittable.absent(),
  customerDeviceFingerprint: json.containsKey('customer_device_fingerprint') ? Omittable(json['customer_device_fingerprint'] as String?) : const Omittable.absent(),
  customerDeviceId: json.containsKey('customer_device_id') ? Omittable(json['customer_device_id'] as String?) : const Omittable.absent(),
  customerEmailAddress: json.containsKey('customer_email_address') ? Omittable(json['customer_email_address'] as String?) : const Omittable.absent(),
  customerPurchaseIp: json.containsKey('customer_purchase_ip') ? Omittable(json['customer_purchase_ip'] as String?) : const Omittable.absent(),
  productDescription: json.containsKey('product_description') ? Omittable(json['product_description'] as String?) : const Omittable.absent(),
  shippingAddress: json.containsKey('shipping_address') ? Omittable(json['shipping_address'] != null ? DisputeTransactionShippingAddress.fromJson(json['shipping_address'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Stripe charge ID for the Visa Compelling Evidence 3.0 eligible prior charge.
final String charge;

/// User Account ID used to log into business platform. Must be recognizable by the user.
final Omittable<String?> customerAccountId;

/// Unique identifier of the cardholder’s device derived from a combination of at least two hardware and software attributes. Must be at least 20 characters.
final Omittable<String?> customerDeviceFingerprint;

/// Unique identifier of the cardholder’s device such as a device serial number (e.g., International Mobile Equipment Identity `[IMEI]`). Must be at least 15 characters.
final Omittable<String?> customerDeviceId;

/// The email address of the customer.
final Omittable<String?> customerEmailAddress;

/// The IP address that the customer used when making the purchase.
final Omittable<String?> customerPurchaseIp;

/// A description of the product or service that was sold.
final Omittable<String?> productDescription;

/// The address to which a physical product was shipped. All fields are required for Visa Compelling Evidence 3.0 evidence submission.
final Omittable<DisputeTransactionShippingAddress?> shippingAddress;

Map<String, dynamic> toJson() { return {
  'charge': charge,
  if (customerAccountId.isPresent) 'customer_account_id': customerAccountId.value,
  if (customerDeviceFingerprint.isPresent) 'customer_device_fingerprint': customerDeviceFingerprint.value,
  if (customerDeviceId.isPresent) 'customer_device_id': customerDeviceId.value,
  if (customerEmailAddress.isPresent) 'customer_email_address': customerEmailAddress.value,
  if (customerPurchaseIp.isPresent) 'customer_purchase_ip': customerPurchaseIp.value,
  if (productDescription.isPresent) 'product_description': productDescription.value,
  if (shippingAddress.isPresent) 'shipping_address': shippingAddress.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('charge') && json['charge'] is String; } 
DisputeVisaCompellingEvidence3PriorUndisputedTransaction copyWith({String? charge, Omittable<String?>? customerAccountId, Omittable<String?>? customerDeviceFingerprint, Omittable<String?>? customerDeviceId, Omittable<String?>? customerEmailAddress, Omittable<String?>? customerPurchaseIp, Omittable<String?>? productDescription, Omittable<DisputeTransactionShippingAddress?>? shippingAddress, }) { return DisputeVisaCompellingEvidence3PriorUndisputedTransaction(
  charge: charge ?? this.charge,
  customerAccountId: customerAccountId ?? this.customerAccountId,
  customerDeviceFingerprint: customerDeviceFingerprint ?? this.customerDeviceFingerprint,
  customerDeviceId: customerDeviceId ?? this.customerDeviceId,
  customerEmailAddress: customerEmailAddress ?? this.customerEmailAddress,
  customerPurchaseIp: customerPurchaseIp ?? this.customerPurchaseIp,
  productDescription: productDescription ?? this.productDescription,
  shippingAddress: shippingAddress ?? this.shippingAddress,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DisputeVisaCompellingEvidence3PriorUndisputedTransaction &&
          charge == other.charge &&
          customerAccountId == other.customerAccountId &&
          customerDeviceFingerprint == other.customerDeviceFingerprint &&
          customerDeviceId == other.customerDeviceId &&
          customerEmailAddress == other.customerEmailAddress &&
          customerPurchaseIp == other.customerPurchaseIp &&
          productDescription == other.productDescription &&
          shippingAddress == other.shippingAddress; } 
@override int get hashCode { return Object.hash(charge, customerAccountId, customerDeviceFingerprint, customerDeviceId, customerEmailAddress, customerPurchaseIp, productDescription, shippingAddress); } 
@override String toString() { return 'DisputeVisaCompellingEvidence3PriorUndisputedTransaction(charge: $charge, customerAccountId: $customerAccountId, customerDeviceFingerprint: $customerDeviceFingerprint, customerDeviceId: $customerDeviceId, customerEmailAddress: $customerEmailAddress, customerPurchaseIp: $customerPurchaseIp, productDescription: $productDescription, shippingAddress: $shippingAddress)'; } 
 }
