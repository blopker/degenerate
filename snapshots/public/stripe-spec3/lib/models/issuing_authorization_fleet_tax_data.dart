// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class IssuingAuthorizationFleetTaxData {const IssuingAuthorizationFleetTaxData({this.localAmountDecimal, this.nationalAmountDecimal, });

factory IssuingAuthorizationFleetTaxData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetTaxData(
  localAmountDecimal: json['local_amount_decimal'] as String?,
  nationalAmountDecimal: json['national_amount_decimal'] as String?,
); }

/// Amount of state or provincial Sales Tax included in the transaction amount. `null` if not reported by merchant or not subject to tax.
final String? localAmountDecimal;

/// Amount of national Sales Tax or VAT included in the transaction amount. `null` if not reported by merchant or not subject to tax.
final String? nationalAmountDecimal;

Map<String, dynamic> toJson() { return {
  'local_amount_decimal': ?localAmountDecimal,
  'national_amount_decimal': ?nationalAmountDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'local_amount_decimal', 'national_amount_decimal'}.contains(key)); } 
IssuingAuthorizationFleetTaxData copyWith({String? Function()? localAmountDecimal, String? Function()? nationalAmountDecimal, }) { return IssuingAuthorizationFleetTaxData(
  localAmountDecimal: localAmountDecimal != null ? localAmountDecimal() : this.localAmountDecimal,
  nationalAmountDecimal: nationalAmountDecimal != null ? nationalAmountDecimal() : this.nationalAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationFleetTaxData &&
          localAmountDecimal == other.localAmountDecimal &&
          nationalAmountDecimal == other.nationalAmountDecimal; } 
@override int get hashCode { return Object.hash(localAmountDecimal, nationalAmountDecimal); } 
@override String toString() { return 'IssuingAuthorizationFleetTaxData(localAmountDecimal: $localAmountDecimal, nationalAmountDecimal: $nationalAmountDecimal)'; } 
 }
