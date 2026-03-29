// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme {const PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme.fromJson(String json) { return switch (json) {
  'inbound_goods' => inboundGoods,
  'small_seller' => smallSeller,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme inboundGoods = PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme._('inbound_goods');

static const PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme smallSeller = PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme._('small_seller');

static const PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme standard = PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme> values = [inboundGoods, smallSeller, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsMtStandard {const PostTaxRegistrationsRequestCountryOptionsMtStandard({required this.placeOfSupplyScheme});

factory PostTaxRegistrationsRequestCountryOptionsMtStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsMtStandard(
  placeOfSupplyScheme: PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme.fromJson(json['place_of_supply_scheme'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme placeOfSupplyScheme;

Map<String, dynamic> toJson() { return {
  'place_of_supply_scheme': placeOfSupplyScheme.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('place_of_supply_scheme'); } 
PostTaxRegistrationsRequestCountryOptionsMtStandard copyWith({PostTaxRegistrationsRequestCountryOptionsMtStandardPlaceOfSupplyScheme? placeOfSupplyScheme}) { return PostTaxRegistrationsRequestCountryOptionsMtStandard(
  placeOfSupplyScheme: placeOfSupplyScheme ?? this.placeOfSupplyScheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsMtStandard &&
          placeOfSupplyScheme == other.placeOfSupplyScheme; } 
@override int get hashCode { return placeOfSupplyScheme.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsMtStandard(placeOfSupplyScheme: $placeOfSupplyScheme)'; } 
 }
