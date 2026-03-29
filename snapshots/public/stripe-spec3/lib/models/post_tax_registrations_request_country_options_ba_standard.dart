// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme {const PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme.fromJson(String json) { return switch (json) {
  'inbound_goods' => inboundGoods,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme inboundGoods = PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme._('inbound_goods');

static const PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme standard = PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme> values = [inboundGoods, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsBaStandard {const PostTaxRegistrationsRequestCountryOptionsBaStandard({this.placeOfSupplyScheme});

factory PostTaxRegistrationsRequestCountryOptionsBaStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsBaStandard(
  placeOfSupplyScheme: json['place_of_supply_scheme'] != null ? PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme.fromJson(json['place_of_supply_scheme'] as String) : null,
); }

final PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme? placeOfSupplyScheme;

Map<String, dynamic> toJson() { return {
  if (placeOfSupplyScheme != null) 'place_of_supply_scheme': placeOfSupplyScheme?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'place_of_supply_scheme'}.contains(key)); } 
PostTaxRegistrationsRequestCountryOptionsBaStandard copyWith({PostTaxRegistrationsRequestCountryOptionsBaStandardPlaceOfSupplyScheme Function()? placeOfSupplyScheme}) { return PostTaxRegistrationsRequestCountryOptionsBaStandard(
  placeOfSupplyScheme: placeOfSupplyScheme != null ? placeOfSupplyScheme() : this.placeOfSupplyScheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsBaStandard &&
          placeOfSupplyScheme == other.placeOfSupplyScheme; } 
@override int get hashCode { return placeOfSupplyScheme.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBaStandard(placeOfSupplyScheme: $placeOfSupplyScheme)'; } 
 }
