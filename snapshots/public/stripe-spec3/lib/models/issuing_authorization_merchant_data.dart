// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class IssuingAuthorizationMerchantData {const IssuingAuthorizationMerchantData({required this.category, required this.categoryCode, this.city, this.country, this.name, required this.networkId, this.postalCode, this.state, this.taxId, this.terminalId, this.url, });

factory IssuingAuthorizationMerchantData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationMerchantData(
  category: json['category'] as String,
  categoryCode: json['category_code'] as String,
  city: json['city'] as String?,
  country: json['country'] as String?,
  name: json['name'] as String?,
  networkId: json['network_id'] as String,
  postalCode: json['postal_code'] as String?,
  state: json['state'] as String?,
  taxId: json['tax_id'] as String?,
  terminalId: json['terminal_id'] as String?,
  url: json['url'] as String?,
); }

/// A categorization of the seller's type of business. See our [merchant categories guide](https://docs.stripe.com/issuing/merchant-categories) for a list of possible values.
final String category;

/// The merchant category code for the seller’s business
final String categoryCode;

/// City where the seller is located
final String? city;

/// Country where the seller is located
final String? country;

/// Name of the seller
final String? name;

/// Identifier assigned to the seller by the card network. Different card networks may assign different network_id fields to the same merchant.
final String networkId;

/// Postal code where the seller is located
final String? postalCode;

/// State where the seller is located
final String? state;

/// The seller's tax identification number. Currently populated for French merchants only.
final String? taxId;

/// An ID assigned by the seller to the location of the sale.
final String? terminalId;

/// URL provided by the merchant on a 3DS request
final String? url;

Map<String, dynamic> toJson() { return {
  'category': category,
  'category_code': categoryCode,
  'city': ?city,
  'country': ?country,
  'name': ?name,
  'network_id': networkId,
  'postal_code': ?postalCode,
  'state': ?state,
  'tax_id': ?taxId,
  'terminal_id': ?terminalId,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('category') && json['category'] is String &&
      json.containsKey('category_code') && json['category_code'] is String &&
      json.containsKey('network_id') && json['network_id'] is String; } 
IssuingAuthorizationMerchantData copyWith({String? category, String? categoryCode, String? Function()? city, String? Function()? country, String? Function()? name, String? networkId, String? Function()? postalCode, String? Function()? state, String? Function()? taxId, String? Function()? terminalId, String? Function()? url, }) { return IssuingAuthorizationMerchantData(
  category: category ?? this.category,
  categoryCode: categoryCode ?? this.categoryCode,
  city: city != null ? city() : this.city,
  country: country != null ? country() : this.country,
  name: name != null ? name() : this.name,
  networkId: networkId ?? this.networkId,
  postalCode: postalCode != null ? postalCode() : this.postalCode,
  state: state != null ? state() : this.state,
  taxId: taxId != null ? taxId() : this.taxId,
  terminalId: terminalId != null ? terminalId() : this.terminalId,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationMerchantData &&
          category == other.category &&
          categoryCode == other.categoryCode &&
          city == other.city &&
          country == other.country &&
          name == other.name &&
          networkId == other.networkId &&
          postalCode == other.postalCode &&
          state == other.state &&
          taxId == other.taxId &&
          terminalId == other.terminalId &&
          url == other.url; } 
@override int get hashCode { return Object.hash(category, categoryCode, city, country, name, networkId, postalCode, state, taxId, terminalId, url); } 
@override String toString() { return 'IssuingAuthorizationMerchantData(category: $category, categoryCode: $categoryCode, city: $city, country: $country, name: $name, networkId: $networkId, postalCode: $postalCode, state: $state, taxId: $taxId, terminalId: $terminalId, url: $url)'; } 
 }
