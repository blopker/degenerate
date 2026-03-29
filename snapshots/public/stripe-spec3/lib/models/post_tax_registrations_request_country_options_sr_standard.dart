// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme {const PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme.fromJson(String json) { return switch (json) {
  'inbound_goods' => inboundGoods,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme inboundGoods = PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme._('inbound_goods');

static const PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme standard = PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme> values = [inboundGoods, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsSrStandard {const PostTaxRegistrationsRequestCountryOptionsSrStandard({this.placeOfSupplyScheme});

factory PostTaxRegistrationsRequestCountryOptionsSrStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsSrStandard(
  placeOfSupplyScheme: json['place_of_supply_scheme'] != null ? PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme.fromJson(json['place_of_supply_scheme'] as String) : null,
); }

final PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme? placeOfSupplyScheme;

Map<String, dynamic> toJson() { return {
  if (placeOfSupplyScheme != null) 'place_of_supply_scheme': placeOfSupplyScheme?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'place_of_supply_scheme'}.contains(key)); } 
PostTaxRegistrationsRequestCountryOptionsSrStandard copyWith({PostTaxRegistrationsRequestCountryOptionsSrStandardPlaceOfSupplyScheme Function()? placeOfSupplyScheme}) { return PostTaxRegistrationsRequestCountryOptionsSrStandard(
  placeOfSupplyScheme: placeOfSupplyScheme != null ? placeOfSupplyScheme() : this.placeOfSupplyScheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsSrStandard &&
          placeOfSupplyScheme == other.placeOfSupplyScheme; } 
@override int get hashCode { return placeOfSupplyScheme.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsSrStandard(placeOfSupplyScheme: $placeOfSupplyScheme)'; } 
 }
