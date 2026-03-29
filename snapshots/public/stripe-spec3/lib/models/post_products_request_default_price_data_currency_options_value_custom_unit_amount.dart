// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostProductsRequestDefaultPriceDataCurrencyOptionsValueCustomUnitAmount {const PostProductsRequestDefaultPriceDataCurrencyOptionsValueCustomUnitAmount({required this.enabled, this.maximum, this.minimum, this.preset, });

factory PostProductsRequestDefaultPriceDataCurrencyOptionsValueCustomUnitAmount.fromJson(Map<String, dynamic> json) { return PostProductsRequestDefaultPriceDataCurrencyOptionsValueCustomUnitAmount(
  enabled: json['enabled'] as bool,
  maximum: json['maximum'] != null ? (json['maximum'] as num).toInt() : null,
  minimum: json['minimum'] != null ? (json['minimum'] as num).toInt() : null,
  preset: json['preset'] != null ? (json['preset'] as num).toInt() : null,
); }

final bool enabled;

final int? maximum;

final int? minimum;

final int? preset;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'maximum': ?maximum,
  'minimum': ?minimum,
  'preset': ?preset,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostProductsRequestDefaultPriceDataCurrencyOptionsValueCustomUnitAmount copyWith({bool? enabled, int Function()? maximum, int Function()? minimum, int Function()? preset, }) { return PostProductsRequestDefaultPriceDataCurrencyOptionsValueCustomUnitAmount(
  enabled: enabled ?? this.enabled,
  maximum: maximum != null ? maximum() : this.maximum,
  minimum: minimum != null ? minimum() : this.minimum,
  preset: preset != null ? preset() : this.preset,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostProductsRequestDefaultPriceDataCurrencyOptionsValueCustomUnitAmount &&
          enabled == other.enabled &&
          maximum == other.maximum &&
          minimum == other.minimum &&
          preset == other.preset; } 
@override int get hashCode { return Object.hash(enabled, maximum, minimum, preset); } 
@override String toString() { return 'PostProductsRequestDefaultPriceDataCurrencyOptionsValueCustomUnitAmount(enabled: $enabled, maximum: $maximum, minimum: $minimum, preset: $preset)'; } 
 }
