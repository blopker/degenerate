// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme {const PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme.fromJson(String json) { return switch (json) {
  'inbound_goods' => inboundGoods,
  'small_seller' => smallSeller,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme inboundGoods = PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme._('inbound_goods');

static const PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme smallSeller = PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme._('small_seller');

static const PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme standard = PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme> values = [inboundGoods, smallSeller, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsPtStandard {const PostTaxRegistrationsRequestCountryOptionsPtStandard({required this.placeOfSupplyScheme});

factory PostTaxRegistrationsRequestCountryOptionsPtStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsPtStandard(
  placeOfSupplyScheme: PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme.fromJson(json['place_of_supply_scheme'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme placeOfSupplyScheme;

Map<String, dynamic> toJson() { return {
  'place_of_supply_scheme': placeOfSupplyScheme.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('place_of_supply_scheme'); } 
PostTaxRegistrationsRequestCountryOptionsPtStandard copyWith({PostTaxRegistrationsRequestCountryOptionsPtStandardPlaceOfSupplyScheme? placeOfSupplyScheme}) { return PostTaxRegistrationsRequestCountryOptionsPtStandard(
  placeOfSupplyScheme: placeOfSupplyScheme ?? this.placeOfSupplyScheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsPtStandard &&
          placeOfSupplyScheme == other.placeOfSupplyScheme; } 
@override int get hashCode { return placeOfSupplyScheme.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsPtStandard(placeOfSupplyScheme: $placeOfSupplyScheme)'; } 
 }
