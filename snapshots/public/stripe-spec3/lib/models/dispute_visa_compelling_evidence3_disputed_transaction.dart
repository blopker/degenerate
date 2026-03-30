// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dispute_transaction_shipping_address.dart';/// Categorization of disputed payment.
final class DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices {const DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices._(this.value);

factory DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices.fromJson(String json) { return switch (json) {
  'merchandise' => merchandise,
  'services' => services,
  _ => DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices._(json),
}; }

static const DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices merchandise = DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices._('merchandise');

static const DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices services = DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices._('services');

static const List<DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices> values = [merchandise, services];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices($value)'; } 
 }
/// 
final class DisputeVisaCompellingEvidence3DisputedTransaction {const DisputeVisaCompellingEvidence3DisputedTransaction({this.customerAccountId, this.customerDeviceFingerprint, this.customerDeviceId, this.customerEmailAddress, this.customerPurchaseIp, this.merchandiseOrServices, this.productDescription, this.shippingAddress, });

factory DisputeVisaCompellingEvidence3DisputedTransaction.fromJson(Map<String, dynamic> json) { return DisputeVisaCompellingEvidence3DisputedTransaction(
  customerAccountId: json['customer_account_id'] as String?,
  customerDeviceFingerprint: json['customer_device_fingerprint'] as String?,
  customerDeviceId: json['customer_device_id'] as String?,
  customerEmailAddress: json['customer_email_address'] as String?,
  customerPurchaseIp: json['customer_purchase_ip'] as String?,
  merchandiseOrServices: json['merchandise_or_services'] != null ? DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices.fromJson(json['merchandise_or_services'] as String) : null,
  productDescription: json['product_description'] as String?,
  shippingAddress: json['shipping_address'] != null ? DisputeTransactionShippingAddress.fromJson(json['shipping_address'] as Map<String, dynamic>) : null,
); }

/// User Account ID used to log into business platform. Must be recognizable by the user.
final String? customerAccountId;

/// Unique identifier of the cardholder’s device derived from a combination of at least two hardware and software attributes. Must be at least 20 characters.
final String? customerDeviceFingerprint;

/// Unique identifier of the cardholder’s device such as a device serial number (e.g., International Mobile Equipment Identity [IMEI]). Must be at least 15 characters.
final String? customerDeviceId;

/// The email address of the customer.
final String? customerEmailAddress;

/// The IP address that the customer used when making the purchase.
final String? customerPurchaseIp;

/// Categorization of disputed payment.
final DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices? merchandiseOrServices;

/// A description of the product or service that was sold.
final String? productDescription;

/// The address to which a physical product was shipped. All fields are required for Visa Compelling Evidence 3.0 evidence submission.
final DisputeTransactionShippingAddress? shippingAddress;

Map<String, dynamic> toJson() { return {
  'customer_account_id': ?customerAccountId,
  'customer_device_fingerprint': ?customerDeviceFingerprint,
  'customer_device_id': ?customerDeviceId,
  'customer_email_address': ?customerEmailAddress,
  'customer_purchase_ip': ?customerPurchaseIp,
  if (merchandiseOrServices != null) 'merchandise_or_services': merchandiseOrServices?.toJson(),
  'product_description': ?productDescription,
  if (shippingAddress != null) 'shipping_address': shippingAddress?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'customer_account_id', 'customer_device_fingerprint', 'customer_device_id', 'customer_email_address', 'customer_purchase_ip', 'merchandise_or_services', 'product_description', 'shipping_address'}.contains(key)); } 
DisputeVisaCompellingEvidence3DisputedTransaction copyWith({String? Function()? customerAccountId, String? Function()? customerDeviceFingerprint, String? Function()? customerDeviceId, String? Function()? customerEmailAddress, String? Function()? customerPurchaseIp, DisputeVisaCompellingEvidence3DisputedTransactionMerchandiseOrServices? Function()? merchandiseOrServices, String? Function()? productDescription, DisputeTransactionShippingAddress? Function()? shippingAddress, }) { return DisputeVisaCompellingEvidence3DisputedTransaction(
  customerAccountId: customerAccountId != null ? customerAccountId() : this.customerAccountId,
  customerDeviceFingerprint: customerDeviceFingerprint != null ? customerDeviceFingerprint() : this.customerDeviceFingerprint,
  customerDeviceId: customerDeviceId != null ? customerDeviceId() : this.customerDeviceId,
  customerEmailAddress: customerEmailAddress != null ? customerEmailAddress() : this.customerEmailAddress,
  customerPurchaseIp: customerPurchaseIp != null ? customerPurchaseIp() : this.customerPurchaseIp,
  merchandiseOrServices: merchandiseOrServices != null ? merchandiseOrServices() : this.merchandiseOrServices,
  productDescription: productDescription != null ? productDescription() : this.productDescription,
  shippingAddress: shippingAddress != null ? shippingAddress() : this.shippingAddress,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DisputeVisaCompellingEvidence3DisputedTransaction &&
          customerAccountId == other.customerAccountId &&
          customerDeviceFingerprint == other.customerDeviceFingerprint &&
          customerDeviceId == other.customerDeviceId &&
          customerEmailAddress == other.customerEmailAddress &&
          customerPurchaseIp == other.customerPurchaseIp &&
          merchandiseOrServices == other.merchandiseOrServices &&
          productDescription == other.productDescription &&
          shippingAddress == other.shippingAddress; } 
@override int get hashCode { return Object.hash(customerAccountId, customerDeviceFingerprint, customerDeviceId, customerEmailAddress, customerPurchaseIp, merchandiseOrServices, productDescription, shippingAddress); } 
@override String toString() { return 'DisputeVisaCompellingEvidence3DisputedTransaction(customerAccountId: $customerAccountId, customerDeviceFingerprint: $customerDeviceFingerprint, customerDeviceId: $customerDeviceId, customerEmailAddress: $customerEmailAddress, customerPurchaseIp: $customerPurchaseIp, merchandiseOrServices: $merchandiseOrServices, productDescription: $productDescription, shippingAddress: $shippingAddress)'; } 
 }
