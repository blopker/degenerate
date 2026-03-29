// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme {const PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme.fromJson(String json) { return switch (json) {
  'inbound_goods' => inboundGoods,
  'small_seller' => smallSeller,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme inboundGoods = PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme._('inbound_goods');

static const PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme smallSeller = PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme._('small_seller');

static const PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme standard = PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme> values = [inboundGoods, smallSeller, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsBgStandard {const PostTaxRegistrationsRequestCountryOptionsBgStandard({required this.placeOfSupplyScheme});

factory PostTaxRegistrationsRequestCountryOptionsBgStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsBgStandard(
  placeOfSupplyScheme: PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme.fromJson(json['place_of_supply_scheme'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme placeOfSupplyScheme;

Map<String, dynamic> toJson() { return {
  'place_of_supply_scheme': placeOfSupplyScheme.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('place_of_supply_scheme'); } 
PostTaxRegistrationsRequestCountryOptionsBgStandard copyWith({PostTaxRegistrationsRequestCountryOptionsBgStandardPlaceOfSupplyScheme? placeOfSupplyScheme}) { return PostTaxRegistrationsRequestCountryOptionsBgStandard(
  placeOfSupplyScheme: placeOfSupplyScheme ?? this.placeOfSupplyScheme,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsBgStandard &&
          placeOfSupplyScheme == other.placeOfSupplyScheme; } 
@override int get hashCode { return placeOfSupplyScheme.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBgStandard(placeOfSupplyScheme: $placeOfSupplyScheme)'; } 
 }
