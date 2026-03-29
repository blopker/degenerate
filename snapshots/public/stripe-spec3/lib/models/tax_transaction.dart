// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tax_product_resource_customer_details.dart';import 'tax_transaction_line_items.dart';import 'tax_transaction_reversal.dart';import 'tax_transaction_ship_from_details.dart';import 'tax_transaction_shipping_cost.dart';/// String representing the object's type. Objects of the same type share the same value.
final class TaxTransactionObject {const TaxTransactionObject._(this.value);

factory TaxTransactionObject.fromJson(String json) { return switch (json) {
  'tax.transaction' => taxTransaction,
  _ => TaxTransactionObject._(json),
}; }

static const TaxTransactionObject taxTransaction = TaxTransactionObject._('tax.transaction');

static const List<TaxTransactionObject> values = [taxTransaction];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxTransactionObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxTransactionObject($value)'; } 
 }
/// If `reversal`, this transaction reverses an earlier transaction.
final class TaxTransactionType {const TaxTransactionType._(this.value);

factory TaxTransactionType.fromJson(String json) { return switch (json) {
  'reversal' => reversal,
  'transaction' => transaction,
  _ => TaxTransactionType._(json),
}; }

static const TaxTransactionType reversal = TaxTransactionType._('reversal');

static const TaxTransactionType transaction = TaxTransactionType._('transaction');

static const List<TaxTransactionType> values = [reversal, transaction];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxTransactionType($value)'; } 
 }
/// A Tax Transaction records the tax collected from or refunded to your customer.
/// 
/// Related guide: [Calculate tax in your custom payment flow](https://docs.stripe.com/tax/custom#tax-transaction)
final class TaxTransaction {const TaxTransaction({required this.created, required this.currency, this.customer, required this.customerDetails, required this.id, this.lineItems, required this.livemode, this.metadata, required this.object, required this.postedAt, required this.reference, this.reversal, this.shipFromDetails, this.shippingCost, required this.taxDate, required this.type, });

factory TaxTransaction.fromJson(Map<String, dynamic> json) { return TaxTransaction(
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  customer: json['customer'] as String?,
  customerDetails: TaxProductResourceCustomerDetails.fromJson(json['customer_details'] as Map<String, dynamic>),
  id: json['id'] as String,
  lineItems: json['line_items'] != null ? TaxTransactionLineItems.fromJson(json['line_items'] as Map<String, dynamic>) : null,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  object: TaxTransactionObject.fromJson(json['object'] as String),
  postedAt: (json['posted_at'] as num).toInt(),
  reference: json['reference'] as String,
  reversal: json['reversal'] != null ? TaxTransactionReversal.fromJson(json['reversal'] as Map<String, dynamic>) : null,
  shipFromDetails: json['ship_from_details'] != null ? TaxTransactionShipFromDetails.fromJson(json['ship_from_details'] as Map<String, dynamic>) : null,
  shippingCost: json['shipping_cost'] != null ? TaxTransactionShippingCost.fromJson(json['shipping_cost'] as Map<String, dynamic>) : null,
  taxDate: (json['tax_date'] as num).toInt(),
  type: TaxTransactionType.fromJson(json['type'] as String),
); }

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// The ID of an existing [Customer](https://docs.stripe.com/api/customers/object) used for the resource.
final String? customer;

final TaxProductResourceCustomerDetails customerDetails;

/// Unique identifier for the transaction.
final String id;

/// The tax collected or refunded, by line item.
final TaxTransactionLineItems? lineItems;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// String representing the object's type. Objects of the same type share the same value.
final TaxTransactionObject object;

/// The Unix timestamp representing when the tax liability is assumed or reduced.
final int postedAt;

/// A custom unique identifier, such as 'myOrder_123'.
final String reference;

/// If `type=reversal`, contains information about what was reversed.
final TaxTransactionReversal? reversal;

/// The details of the ship from location, such as the address.
final TaxTransactionShipFromDetails? shipFromDetails;

/// The shipping cost details for the transaction.
final TaxTransactionShippingCost? shippingCost;

/// Timestamp of date at which the tax rules and rates in effect applies for the calculation.
final int taxDate;

/// If `reversal`, this transaction reverses an earlier transaction.
final TaxTransactionType type;

Map<String, dynamic> toJson() { return {
  'created': created,
  'currency': currency,
  'customer': ?customer,
  'customer_details': customerDetails.toJson(),
  'id': id,
  if (lineItems != null) 'line_items': lineItems?.toJson(),
  'livemode': livemode,
  'metadata': ?metadata,
  'object': object.toJson(),
  'posted_at': postedAt,
  'reference': reference,
  if (reversal != null) 'reversal': reversal?.toJson(),
  if (shipFromDetails != null) 'ship_from_details': shipFromDetails?.toJson(),
  if (shippingCost != null) 'shipping_cost': shippingCost?.toJson(),
  'tax_date': taxDate,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('customer_details') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('posted_at') && json['posted_at'] is num &&
      json.containsKey('reference') && json['reference'] is String &&
      json.containsKey('tax_date') && json['tax_date'] is num &&
      json.containsKey('type'); } 
TaxTransaction copyWith({int? created, String? currency, String? Function()? customer, TaxProductResourceCustomerDetails? customerDetails, String? id, TaxTransactionLineItems? Function()? lineItems, bool? livemode, Map<String, String>? Function()? metadata, TaxTransactionObject? object, int? postedAt, String? reference, TaxTransactionReversal? Function()? reversal, TaxTransactionShipFromDetails? Function()? shipFromDetails, TaxTransactionShippingCost? Function()? shippingCost, int? taxDate, TaxTransactionType? type, }) { return TaxTransaction(
  created: created ?? this.created,
  currency: currency ?? this.currency,
  customer: customer != null ? customer() : this.customer,
  customerDetails: customerDetails ?? this.customerDetails,
  id: id ?? this.id,
  lineItems: lineItems != null ? lineItems() : this.lineItems,
  livemode: livemode ?? this.livemode,
  metadata: metadata != null ? metadata() : this.metadata,
  object: object ?? this.object,
  postedAt: postedAt ?? this.postedAt,
  reference: reference ?? this.reference,
  reversal: reversal != null ? reversal() : this.reversal,
  shipFromDetails: shipFromDetails != null ? shipFromDetails() : this.shipFromDetails,
  shippingCost: shippingCost != null ? shippingCost() : this.shippingCost,
  taxDate: taxDate ?? this.taxDate,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxTransaction &&
          created == other.created &&
          currency == other.currency &&
          customer == other.customer &&
          customerDetails == other.customerDetails &&
          id == other.id &&
          lineItems == other.lineItems &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          postedAt == other.postedAt &&
          reference == other.reference &&
          reversal == other.reversal &&
          shipFromDetails == other.shipFromDetails &&
          shippingCost == other.shippingCost &&
          taxDate == other.taxDate &&
          type == other.type; } 
@override int get hashCode { return Object.hash(created, currency, customer, customerDetails, id, lineItems, livemode, metadata, object, postedAt, reference, reversal, shipFromDetails, shippingCost, taxDate, type); } 
@override String toString() { return 'TaxTransaction(created: $created, currency: $currency, customer: $customer, customerDetails: $customerDetails, id: $id, lineItems: $lineItems, livemode: $livemode, metadata: $metadata, object: $object, postedAt: $postedAt, reference: $reference, reversal: $reversal, shipFromDetails: $shipFromDetails, shippingCost: $shippingCost, taxDate: $taxDate, type: $type)'; } 
 }
