// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme {const PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme.fromJson(String json) { return switch (json) {
  'inbound_goods' => inboundGoods,
  'small_seller' => smallSeller,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme inboundGoods = PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme._('inbound_goods');

static const PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme smallSeller = PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme._('small_seller');

static const PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme standard = PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme> values = [inboundGoods, smallSeller, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsSiStandard {const PostTaxRegistrationsRequestCountryOptionsSiStandard({required this.placeOfSupplyScheme});

factory PostTaxRegistrationsRequestCountryOptionsSiStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsSiStandard(
  placeOfSupplyScheme: PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme.fromJson(json['place_of_supply_scheme'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme placeOfSupplyScheme;

Map<String, dynamic> toJson() { return {
  'place_of_supply_scheme': placeOfSupplyScheme.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('place_of_supply_scheme'); } 
PostTaxRegistrationsRequestCountryOptionsSiStandard copyWith({PostTaxRegistrationsRequestCountryOptionsSiStandardPlaceOfSupplyScheme? placeOfSupplyScheme}) { return PostTaxRegistrationsRequestCountryOptionsSiStandard(
  placeOfSupplyScheme: placeOfSupplyScheme ?? this.placeOfSupplyScheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsSiStandard &&
          placeOfSupplyScheme == other.placeOfSupplyScheme; } 
@override int get hashCode { return placeOfSupplyScheme.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsSiStandard(placeOfSupplyScheme: $placeOfSupplyScheme)'; } 
 }
