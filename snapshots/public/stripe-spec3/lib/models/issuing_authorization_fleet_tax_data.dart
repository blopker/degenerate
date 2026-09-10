// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingAuthorizationFleetTaxData {const IssuingAuthorizationFleetTaxData({this.localAmountDecimal = const Omittable.absent(), this.nationalAmountDecimal = const Omittable.absent(), });

factory IssuingAuthorizationFleetTaxData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetTaxData(
  localAmountDecimal: json.containsKey('local_amount_decimal') ? Omittable(json['local_amount_decimal'] as String?) : const Omittable.absent(),
  nationalAmountDecimal: json.containsKey('national_amount_decimal') ? Omittable(json['national_amount_decimal'] as String?) : const Omittable.absent(),
); }

/// Amount of state or provincial Sales Tax included in the transaction amount. `null` if not reported by merchant or not subject to tax.
final Omittable<String?> localAmountDecimal;

/// Amount of national Sales Tax or VAT included in the transaction amount. `null` if not reported by merchant or not subject to tax.
final Omittable<String?> nationalAmountDecimal;

Map<String, dynamic> toJson() { return {
  if (localAmountDecimal.isPresent) 'local_amount_decimal': localAmountDecimal.value,
  if (nationalAmountDecimal.isPresent) 'national_amount_decimal': nationalAmountDecimal.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'local_amount_decimal', 'national_amount_decimal'}.contains(key)); } 
IssuingAuthorizationFleetTaxData copyWith({Omittable<String?>? localAmountDecimal, Omittable<String?>? nationalAmountDecimal, }) { return IssuingAuthorizationFleetTaxData(
  localAmountDecimal: localAmountDecimal ?? this.localAmountDecimal,
  nationalAmountDecimal: nationalAmountDecimal ?? this.nationalAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationFleetTaxData &&
          localAmountDecimal == other.localAmountDecimal &&
          nationalAmountDecimal == other.nationalAmountDecimal; } 
@override int get hashCode { return Object.hash(localAmountDecimal, nationalAmountDecimal); } 
@override String toString() { return 'IssuingAuthorizationFleetTaxData(localAmountDecimal: $localAmountDecimal, nationalAmountDecimal: $nationalAmountDecimal)'; } 
 }
