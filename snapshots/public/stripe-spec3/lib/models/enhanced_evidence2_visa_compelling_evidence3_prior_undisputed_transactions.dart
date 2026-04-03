// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enhanced_evidence2_visa_compelling_evidence3_prior_undisputed_transactions_customer_account_id.dart';import 'enhanced_evidence2_visa_compelling_evidence3_prior_undisputed_transactions_customer_device_fingerprint.dart';import 'enhanced_evidence2_visa_compelling_evidence3_prior_undisputed_transactions_customer_device_id.dart';import 'enhanced_evidence2_visa_compelling_evidence3_prior_undisputed_transactions_customer_email_address.dart';import 'enhanced_evidence2_visa_compelling_evidence3_prior_undisputed_transactions_customer_purchase_ip.dart';import 'enhanced_evidence2_visa_compelling_evidence3_prior_undisputed_transactions_product_description.dart';import 'enhanced_evidence2_visa_compelling_evidence3_prior_undisputed_transactions_shipping_address.dart';@immutable final class EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactions {const EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactions({required this.charge, this.customerAccountId, this.customerDeviceFingerprint, this.customerDeviceId, this.customerEmailAddress, this.customerPurchaseIp, this.productDescription, this.shippingAddress, });

factory EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactions.fromJson(Map<String, dynamic> json) { return EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactions(
  charge: json['charge'] as String,
  customerAccountId: json['customer_account_id'] != null ? OneOf2.parse(json['customer_account_id'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerAccountIdVariant2.fromJson(v as String),) : null,
  customerDeviceFingerprint: json['customer_device_fingerprint'] != null ? OneOf2.parse(json['customer_device_fingerprint'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprintVariant2.fromJson(v as String),) : null,
  customerDeviceId: json['customer_device_id'] != null ? OneOf2.parse(json['customer_device_id'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceIdVariant2.fromJson(v as String),) : null,
  customerEmailAddress: json['customer_email_address'] != null ? OneOf2.parse(json['customer_email_address'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerEmailAddressVariant2.fromJson(v as String),) : null,
  customerPurchaseIp: json['customer_purchase_ip'] != null ? OneOf2.parse(json['customer_purchase_ip'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIpVariant2.fromJson(v as String),) : null,
  productDescription: json['product_description'] != null ? OneOf2.parse(json['product_description'], fromA: (v) => v as String, fromB: (v) => EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2.fromJson(v as String),) : null,
  shippingAddress: json['shipping_address'] != null ? EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddress.fromJson(json['shipping_address'] as Map<String, dynamic>) : null,
); }

final String charge;

final EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerAccountId? customerAccountId;

final EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint? customerDeviceFingerprint;

final EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceId? customerDeviceId;

final EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerEmailAddress? customerEmailAddress;

final EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIp? customerPurchaseIp;

final EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsProductDescription? productDescription;

final EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddress? shippingAddress;

Map<String, dynamic> toJson() { return {
  'charge': charge,
  if (customerAccountId != null) 'customer_account_id': customerAccountId?.toJson(),
  if (customerDeviceFingerprint != null) 'customer_device_fingerprint': customerDeviceFingerprint?.toJson(),
  if (customerDeviceId != null) 'customer_device_id': customerDeviceId?.toJson(),
  if (customerEmailAddress != null) 'customer_email_address': customerEmailAddress?.toJson(),
  if (customerPurchaseIp != null) 'customer_purchase_ip': customerPurchaseIp?.toJson(),
  if (productDescription != null) 'product_description': productDescription?.toJson(),
  if (shippingAddress != null) 'shipping_address': shippingAddress?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('charge') && json['charge'] is String; } 
EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactions copyWith({String? charge, EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerAccountId Function()? customerAccountId, EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceFingerprint Function()? customerDeviceFingerprint, EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerDeviceId Function()? customerDeviceId, EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerEmailAddress Function()? customerEmailAddress, EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsCustomerPurchaseIp Function()? customerPurchaseIp, EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsProductDescription Function()? productDescription, EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactionsShippingAddress Function()? shippingAddress, }) { return EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactions(
  charge: charge ?? this.charge,
  customerAccountId: customerAccountId != null ? customerAccountId() : this.customerAccountId,
  customerDeviceFingerprint: customerDeviceFingerprint != null ? customerDeviceFingerprint() : this.customerDeviceFingerprint,
  customerDeviceId: customerDeviceId != null ? customerDeviceId() : this.customerDeviceId,
  customerEmailAddress: customerEmailAddress != null ? customerEmailAddress() : this.customerEmailAddress,
  customerPurchaseIp: customerPurchaseIp != null ? customerPurchaseIp() : this.customerPurchaseIp,
  productDescription: productDescription != null ? productDescription() : this.productDescription,
  shippingAddress: shippingAddress != null ? shippingAddress() : this.shippingAddress,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactions &&
          charge == other.charge &&
          customerAccountId == other.customerAccountId &&
          customerDeviceFingerprint == other.customerDeviceFingerprint &&
          customerDeviceId == other.customerDeviceId &&
          customerEmailAddress == other.customerEmailAddress &&
          customerPurchaseIp == other.customerPurchaseIp &&
          productDescription == other.productDescription &&
          shippingAddress == other.shippingAddress; } 
@override int get hashCode { return Object.hash(charge, customerAccountId, customerDeviceFingerprint, customerDeviceId, customerEmailAddress, customerPurchaseIp, productDescription, shippingAddress); } 
@override String toString() { return 'EnhancedEvidence2VisaCompellingEvidence3PriorUndisputedTransactions(charge: $charge, customerAccountId: $customerAccountId, customerDeviceFingerprint: $customerDeviceFingerprint, customerDeviceId: $customerDeviceId, customerEmailAddress: $customerEmailAddress, customerPurchaseIp: $customerPurchaseIp, productDescription: $productDescription, shippingAddress: $shippingAddress)'; } 
 }
