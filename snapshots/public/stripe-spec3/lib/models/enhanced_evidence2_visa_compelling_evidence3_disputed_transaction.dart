// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enhanced_evidence2_visa_compelling_evidence3_disputed_transaction_customer_account_id.dart';import 'enhanced_evidence2_visa_compelling_evidence3_disputed_transaction_customer_device_fingerprint.dart';import 'enhanced_evidence2_visa_compelling_evidence3_disputed_transaction_customer_device_id.dart';import 'enhanced_evidence2_visa_compelling_evidence3_disputed_transaction_customer_email_address.dart';import 'enhanced_evidence2_visa_compelling_evidence3_disputed_transaction_customer_purchase_ip.dart';import 'enhanced_evidence2_visa_compelling_evidence3_disputed_transaction_product_description.dart';import 'enhanced_evidence2_visa_compelling_evidence3_disputed_transaction_shipping_address.dart';final class EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices {const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices._(this.value);

factory EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices.fromJson(String json) { return switch (json) {
  'merchandise' => merchandise,
  'services' => services,
  _ => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices._(json),
}; }

static const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices merchandise = EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices._('merchandise');

static const EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices services = EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices._('services');

static const List<EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices> values = [merchandise, services];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices($value)'; } 
 }
final class EnhancedEvidence2VisaCompellingEvidence3DisputedTransaction {const EnhancedEvidence2VisaCompellingEvidence3DisputedTransaction({this.customerAccountId, this.customerDeviceFingerprint, this.customerDeviceId, this.customerEmailAddress, this.customerPurchaseIp, this.merchandiseOrServices, this.productDescription, this.shippingAddress, });

factory EnhancedEvidence2VisaCompellingEvidence3DisputedTransaction.fromJson(Map<String, dynamic> json) { return EnhancedEvidence2VisaCompellingEvidence3DisputedTransaction(
  customerAccountId: json['customer_account_id'] != null ? OneOf2.parse(json['customer_account_id'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerAccountIdVariant2.fromJson(v as String),) : null,
  customerDeviceFingerprint: json['customer_device_fingerprint'] != null ? OneOf2.parse(json['customer_device_fingerprint'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerDeviceFingerprintVariant2.fromJson(v as String),) : null,
  customerDeviceId: json['customer_device_id'] != null ? OneOf2.parse(json['customer_device_id'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerDeviceIdVariant2.fromJson(v as String),) : null,
  customerEmailAddress: json['customer_email_address'] != null ? OneOf2.parse(json['customer_email_address'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerEmailAddressVariant2.fromJson(v as String),) : null,
  customerPurchaseIp: json['customer_purchase_ip'] != null ? OneOf2.parse(json['customer_purchase_ip'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerPurchaseIpVariant2.fromJson(v as String),) : null,
  merchandiseOrServices: json['merchandise_or_services'] != null ? EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices.fromJson(json['merchandise_or_services'] as String) : null,
  productDescription: json['product_description'] != null ? OneOf2.parse(json['product_description'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionProductDescriptionVariant2.fromJson(v as String),) : null,
  shippingAddress: json['shipping_address'] != null ? EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddress.fromJson(json['shipping_address'] as Map<String, dynamic>) : null,
); }

final EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerAccountId? customerAccountId;

final EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerDeviceFingerprint? customerDeviceFingerprint;

final EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerDeviceId? customerDeviceId;

final EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerEmailAddress? customerEmailAddress;

final EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp? customerPurchaseIp;

final EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices? merchandiseOrServices;

final EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionProductDescription? productDescription;

final EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddress? shippingAddress;

Map<String, dynamic> toJson() { return {
  if (customerAccountId != null) 'customer_account_id': customerAccountId?.toJson(),
  if (customerDeviceFingerprint != null) 'customer_device_fingerprint': customerDeviceFingerprint?.toJson(),
  if (customerDeviceId != null) 'customer_device_id': customerDeviceId?.toJson(),
  if (customerEmailAddress != null) 'customer_email_address': customerEmailAddress?.toJson(),
  if (customerPurchaseIp != null) 'customer_purchase_ip': customerPurchaseIp?.toJson(),
  if (merchandiseOrServices != null) 'merchandise_or_services': merchandiseOrServices?.toJson(),
  if (productDescription != null) 'product_description': productDescription?.toJson(),
  if (shippingAddress != null) 'shipping_address': shippingAddress?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'customer_account_id', 'customer_device_fingerprint', 'customer_device_id', 'customer_email_address', 'customer_purchase_ip', 'merchandise_or_services', 'product_description', 'shipping_address'}.contains(key)); } 
EnhancedEvidence2VisaCompellingEvidence3DisputedTransaction copyWith({EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerAccountId Function()? customerAccountId, EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerDeviceFingerprint Function()? customerDeviceFingerprint, EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerDeviceId Function()? customerDeviceId, EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerEmailAddress Function()? customerEmailAddress, EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionCustomerPurchaseIp Function()? customerPurchaseIp, EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionMerchandiseOrServices Function()? merchandiseOrServices, EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionProductDescription Function()? productDescription, EnhancedEvidence2VisaCompellingEvidence3DisputedTransactionShippingAddress Function()? shippingAddress, }) { return EnhancedEvidence2VisaCompellingEvidence3DisputedTransaction(
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
      other is EnhancedEvidence2VisaCompellingEvidence3DisputedTransaction &&
          customerAccountId == other.customerAccountId &&
          customerDeviceFingerprint == other.customerDeviceFingerprint &&
          customerDeviceId == other.customerDeviceId &&
          customerEmailAddress == other.customerEmailAddress &&
          customerPurchaseIp == other.customerPurchaseIp &&
          merchandiseOrServices == other.merchandiseOrServices &&
          productDescription == other.productDescription &&
          shippingAddress == other.shippingAddress; } 
@override int get hashCode { return Object.hash(customerAccountId, customerDeviceFingerprint, customerDeviceId, customerEmailAddress, customerPurchaseIp, merchandiseOrServices, productDescription, shippingAddress); } 
@override String toString() { return 'EnhancedEvidence2VisaCompellingEvidence3DisputedTransaction(customerAccountId: $customerAccountId, customerDeviceFingerprint: $customerDeviceFingerprint, customerDeviceId: $customerDeviceId, customerEmailAddress: $customerEmailAddress, customerPurchaseIp: $customerPurchaseIp, merchandiseOrServices: $merchandiseOrServices, productDescription: $productDescription, shippingAddress: $shippingAddress)'; } 
 }
