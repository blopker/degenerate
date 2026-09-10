// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'package_dimensions.dart';import 'price.dart';import 'product_default_price.dart';import 'product_marketing_feature.dart';import 'product_tax_code.dart';import 'tax_code.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class ProductObject {const ProductObject._(this.value);

factory ProductObject.fromJson(String json) { return switch (json) {
  'product' => product,
  _ => ProductObject._(json),
}; }

static const ProductObject product = ProductObject._('product');

static const List<ProductObject> values = [product];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProductObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ProductObject($value)'; } 
 }
/// Products describe the specific goods or services you offer to your customers.
/// For example, you might offer a Standard and Premium version of your goods or service; each version would be a separate Product.
/// They can be used in conjunction with [Prices](https://api.stripe.com#prices) to configure pricing in Payment Links, Checkout, and Subscriptions.
/// 
/// Related guides: [Set up a subscription](https://docs.stripe.com/billing/subscriptions/set-up-subscription),
/// [share a Payment Link](https://docs.stripe.com/payment-links),
/// [accept payments with Checkout](https://docs.stripe.com/payments/accept-a-payment#create-product-prices-upfront),
/// and more about [Products and Prices](https://docs.stripe.com/products-prices/overview)
@immutable final class Product {const Product({required this.active, required this.created, required this.id, required this.images, required this.livemode, required this.marketingFeatures, required this.metadata, required this.name, required this.object, required this.updated, this.defaultPrice = const Omittable.absent(), this.description = const Omittable.absent(), this.packageDimensions = const Omittable.absent(), this.shippable = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), this.taxCode = const Omittable.absent(), this.unitLabel = const Omittable.absent(), this.url = const Omittable.absent(), });

factory Product.fromJson(Map<String, dynamic> json) { return Product(
  active: json['active'] as bool,
  created: (json['created'] as num).toInt(),
  defaultPrice: json.containsKey('default_price') ? Omittable(json['default_price'] != null ? OneOf2.parse(json['default_price'], fromA: (v) => v as String, fromB: (v) => Price.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  id: json['id'] as String,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  livemode: json['livemode'] as bool,
  marketingFeatures: (json['marketing_features'] as List<dynamic>).map((e) => ProductMarketingFeature.fromJson(e as Map<String, dynamic>)).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  name: json['name'] as String,
  object: ProductObject.fromJson(json['object'] as String),
  packageDimensions: json.containsKey('package_dimensions') ? Omittable(json['package_dimensions'] != null ? PackageDimensions.fromJson(json['package_dimensions'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  shippable: json.containsKey('shippable') ? Omittable(json['shippable'] as bool?) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
  taxCode: json.containsKey('tax_code') ? Omittable(json['tax_code'] != null ? OneOf2.parse(json['tax_code'], fromA: (v) => v as String, fromB: (v) => TaxCode.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  unitLabel: json.containsKey('unit_label') ? Omittable(json['unit_label'] as String?) : const Omittable.absent(),
  updated: (json['updated'] as num).toInt(),
  url: json.containsKey('url') ? Omittable(json['url'] as String?) : const Omittable.absent(),
); }

/// Whether the product is currently available for purchase.
final bool active;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// The ID of the [Price](https://docs.stripe.com/api/prices) object that is the default price for this product.
final Omittable<ProductDefaultPrice?> defaultPrice;

/// The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
final Omittable<String?> description;

/// Unique identifier for the object.
final String id;

/// A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
final List<String> images;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://docs.stripe.com/payments/checkout/pricing-table).
final List<ProductMarketingFeature> marketingFeatures;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// The product's name, meant to be displayable to the customer.
final String name;

/// String representing the object's type. Objects of the same type share the same value.
final ProductObject object;

/// The dimensions of this product for shipping purposes.
final Omittable<PackageDimensions?> packageDimensions;

/// Whether this product is shipped (i.e., physical goods).
final Omittable<bool?> shippable;

/// Extra information about a product which will appear on your customer's credit card statement. In the case that multiple products are billed at once, the first statement descriptor will be used. Only used for subscription payments.
final Omittable<String?> statementDescriptor;

/// A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
final Omittable<ProductTaxCode?> taxCode;

/// A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
final Omittable<String?> unitLabel;

/// Time at which the object was last updated. Measured in seconds since the Unix epoch.
final int updated;

/// A URL of a publicly-accessible webpage for this product.
final Omittable<String?> url;

Map<String, dynamic> toJson() { return {
  'active': active,
  'created': created,
  if (defaultPrice.isPresent) 'default_price': defaultPrice.value?.toJson(),
  if (description.isPresent) 'description': description.value,
  'id': id,
  'images': images,
  'livemode': livemode,
  'marketing_features': marketingFeatures.map((e) => e.toJson()).toList(),
  'metadata': metadata,
  'name': name,
  'object': object.toJson(),
  if (packageDimensions.isPresent) 'package_dimensions': packageDimensions.value?.toJson(),
  if (shippable.isPresent) 'shippable': shippable.value,
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
  if (taxCode.isPresent) 'tax_code': taxCode.value?.toJson(),
  if (unitLabel.isPresent) 'unit_label': unitLabel.value,
  'updated': updated,
  if (url.isPresent) 'url': url.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('active') && json['active'] is bool &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('images') &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('marketing_features') &&
      json.containsKey('metadata') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('object') &&
      json.containsKey('updated') && json['updated'] is num; } 
Product copyWith({bool? active, int? created, Omittable<ProductDefaultPrice?>? defaultPrice, Omittable<String?>? description, String? id, List<String>? images, bool? livemode, List<ProductMarketingFeature>? marketingFeatures, Map<String,String>? metadata, String? name, ProductObject? object, Omittable<PackageDimensions?>? packageDimensions, Omittable<bool?>? shippable, Omittable<String?>? statementDescriptor, Omittable<ProductTaxCode?>? taxCode, Omittable<String?>? unitLabel, int? updated, Omittable<String?>? url, }) { return Product(
  active: active ?? this.active,
  created: created ?? this.created,
  defaultPrice: defaultPrice ?? this.defaultPrice,
  description: description ?? this.description,
  id: id ?? this.id,
  images: images ?? this.images,
  livemode: livemode ?? this.livemode,
  marketingFeatures: marketingFeatures ?? this.marketingFeatures,
  metadata: metadata ?? this.metadata,
  name: name ?? this.name,
  object: object ?? this.object,
  packageDimensions: packageDimensions ?? this.packageDimensions,
  shippable: shippable ?? this.shippable,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
  taxCode: taxCode ?? this.taxCode,
  unitLabel: unitLabel ?? this.unitLabel,
  updated: updated ?? this.updated,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Product &&
          active == other.active &&
          created == other.created &&
          defaultPrice == other.defaultPrice &&
          description == other.description &&
          id == other.id &&
          listEquals(images, other.images) &&
          livemode == other.livemode &&
          listEquals(marketingFeatures, other.marketingFeatures) &&
          metadata == other.metadata &&
          name == other.name &&
          object == other.object &&
          packageDimensions == other.packageDimensions &&
          shippable == other.shippable &&
          statementDescriptor == other.statementDescriptor &&
          taxCode == other.taxCode &&
          unitLabel == other.unitLabel &&
          updated == other.updated &&
          url == other.url; } 
@override int get hashCode { return Object.hash(active, created, defaultPrice, description, id, Object.hashAll(images), livemode, Object.hashAll(marketingFeatures), metadata, name, object, packageDimensions, shippable, statementDescriptor, taxCode, unitLabel, updated, url); } 
@override String toString() { return 'Product(active: $active, created: $created, defaultPrice: $defaultPrice, description: $description, id: $id, images: $images, livemode: $livemode, marketingFeatures: $marketingFeatures, metadata: $metadata, name: $name, object: $object, packageDimensions: $packageDimensions, shippable: $shippable, statementDescriptor: $statementDescriptor, taxCode: $taxCode, unitLabel: $unitLabel, updated: $updated, url: $url)'; } 
 }
