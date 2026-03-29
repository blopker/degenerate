// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme {const PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme.fromJson(String json) { return switch (json) {
  'inbound_goods' => inboundGoods,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme inboundGoods = PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme._('inbound_goods');

static const PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme standard = PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme> values = [inboundGoods, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsGbStandard {const PostTaxRegistrationsRequestCountryOptionsGbStandard({this.placeOfSupplyScheme});

factory PostTaxRegistrationsRequestCountryOptionsGbStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsGbStandard(
  placeOfSupplyScheme: json['place_of_supply_scheme'] != null ? PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme.fromJson(json['place_of_supply_scheme'] as String) : null,
); }

final PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme? placeOfSupplyScheme;

Map<String, dynamic> toJson() { return {
  if (placeOfSupplyScheme != null) 'place_of_supply_scheme': placeOfSupplyScheme?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'place_of_supply_scheme'}.contains(key)); } 
PostTaxRegistrationsRequestCountryOptionsGbStandard copyWith({PostTaxRegistrationsRequestCountryOptionsGbStandardPlaceOfSupplyScheme Function()? placeOfSupplyScheme}) { return PostTaxRegistrationsRequestCountryOptionsGbStandard(
  placeOfSupplyScheme: placeOfSupplyScheme != null ? placeOfSupplyScheme() : this.placeOfSupplyScheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsGbStandard &&
          placeOfSupplyScheme == other.placeOfSupplyScheme; } 
@override int get hashCode { return placeOfSupplyScheme.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsGbStandard(placeOfSupplyScheme: $placeOfSupplyScheme)'; } 
 }
