// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme {const PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme.fromJson(String json) { return switch (json) {
  'inbound_goods' => inboundGoods,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme inboundGoods = PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme._('inbound_goods');

static const PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme standard = PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme> values = [inboundGoods, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsAlStandard {const PostTaxRegistrationsRequestCountryOptionsAlStandard({this.placeOfSupplyScheme});

factory PostTaxRegistrationsRequestCountryOptionsAlStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsAlStandard(
  placeOfSupplyScheme: json['place_of_supply_scheme'] != null ? PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme.fromJson(json['place_of_supply_scheme'] as String) : null,
); }

final PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme? placeOfSupplyScheme;

Map<String, dynamic> toJson() { return {
  if (placeOfSupplyScheme != null) 'place_of_supply_scheme': placeOfSupplyScheme?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'place_of_supply_scheme'}.contains(key)); } 
PostTaxRegistrationsRequestCountryOptionsAlStandard copyWith({PostTaxRegistrationsRequestCountryOptionsAlStandardPlaceOfSupplyScheme Function()? placeOfSupplyScheme}) { return PostTaxRegistrationsRequestCountryOptionsAlStandard(
  placeOfSupplyScheme: placeOfSupplyScheme != null ? placeOfSupplyScheme() : this.placeOfSupplyScheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsAlStandard &&
          placeOfSupplyScheme == other.placeOfSupplyScheme; } 
@override int get hashCode { return placeOfSupplyScheme.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsAlStandard(placeOfSupplyScheme: $placeOfSupplyScheme)'; } 
 }
