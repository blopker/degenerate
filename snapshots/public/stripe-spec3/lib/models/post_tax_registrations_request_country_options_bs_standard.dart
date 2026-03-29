// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme {const PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme.fromJson(String json) { return switch (json) {
  'inbound_goods' => inboundGoods,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme inboundGoods = PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme._('inbound_goods');

static const PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme standard = PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme> values = [inboundGoods, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsBsStandard {const PostTaxRegistrationsRequestCountryOptionsBsStandard({this.placeOfSupplyScheme});

factory PostTaxRegistrationsRequestCountryOptionsBsStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsBsStandard(
  placeOfSupplyScheme: json['place_of_supply_scheme'] != null ? PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme.fromJson(json['place_of_supply_scheme'] as String) : null,
); }

final PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme? placeOfSupplyScheme;

Map<String, dynamic> toJson() { return {
  if (placeOfSupplyScheme != null) 'place_of_supply_scheme': placeOfSupplyScheme?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'place_of_supply_scheme'}.contains(key)); } 
PostTaxRegistrationsRequestCountryOptionsBsStandard copyWith({PostTaxRegistrationsRequestCountryOptionsBsStandardPlaceOfSupplyScheme Function()? placeOfSupplyScheme}) { return PostTaxRegistrationsRequestCountryOptionsBsStandard(
  placeOfSupplyScheme: placeOfSupplyScheme != null ? placeOfSupplyScheme() : this.placeOfSupplyScheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsBsStandard &&
          placeOfSupplyScheme == other.placeOfSupplyScheme; } 
@override int get hashCode { return placeOfSupplyScheme.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBsStandard(placeOfSupplyScheme: $placeOfSupplyScheme)'; } 
 }
