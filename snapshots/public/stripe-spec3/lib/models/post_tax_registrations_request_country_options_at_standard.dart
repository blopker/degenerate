// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme {const PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme.fromJson(String json) { return switch (json) {
  'inbound_goods' => inboundGoods,
  'small_seller' => smallSeller,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme inboundGoods = PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme._('inbound_goods');

static const PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme smallSeller = PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme._('small_seller');

static const PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme standard = PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme> values = [inboundGoods, smallSeller, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsAtStandard {const PostTaxRegistrationsRequestCountryOptionsAtStandard({required this.placeOfSupplyScheme});

factory PostTaxRegistrationsRequestCountryOptionsAtStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsAtStandard(
  placeOfSupplyScheme: PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme.fromJson(json['place_of_supply_scheme'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme placeOfSupplyScheme;

Map<String, dynamic> toJson() { return {
  'place_of_supply_scheme': placeOfSupplyScheme.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('place_of_supply_scheme'); } 
PostTaxRegistrationsRequestCountryOptionsAtStandard copyWith({PostTaxRegistrationsRequestCountryOptionsAtStandardPlaceOfSupplyScheme? placeOfSupplyScheme}) { return PostTaxRegistrationsRequestCountryOptionsAtStandard(
  placeOfSupplyScheme: placeOfSupplyScheme ?? this.placeOfSupplyScheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsAtStandard &&
          placeOfSupplyScheme == other.placeOfSupplyScheme; } 
@override int get hashCode { return placeOfSupplyScheme.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsAtStandard(placeOfSupplyScheme: $placeOfSupplyScheme)'; } 
 }
