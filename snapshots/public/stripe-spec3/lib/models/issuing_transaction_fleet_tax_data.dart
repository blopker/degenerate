// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingTransactionFleetTaxData {const IssuingTransactionFleetTaxData({this.localAmountDecimal = const Omittable.absent(), this.nationalAmountDecimal = const Omittable.absent(), });

factory IssuingTransactionFleetTaxData.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetTaxData(
  localAmountDecimal: json.containsKey('local_amount_decimal') ? Omittable(json['local_amount_decimal'] as String?) : const Omittable.absent(),
  nationalAmountDecimal: json.containsKey('national_amount_decimal') ? Omittable(json['national_amount_decimal'] as String?) : const Omittable.absent(),
); }

/// Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
final Omittable<String?> localAmountDecimal;

/// Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
final Omittable<String?> nationalAmountDecimal;

Map<String, dynamic> toJson() { return {
  if (localAmountDecimal.isPresent) 'local_amount_decimal': localAmountDecimal.value,
  if (nationalAmountDecimal.isPresent) 'national_amount_decimal': nationalAmountDecimal.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'local_amount_decimal', 'national_amount_decimal'}.contains(key)); } 
IssuingTransactionFleetTaxData copyWith({Omittable<String?>? localAmountDecimal, Omittable<String?>? nationalAmountDecimal, }) { return IssuingTransactionFleetTaxData(
  localAmountDecimal: localAmountDecimal ?? this.localAmountDecimal,
  nationalAmountDecimal: nationalAmountDecimal ?? this.nationalAmountDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionFleetTaxData &&
          localAmountDecimal == other.localAmountDecimal &&
          nationalAmountDecimal == other.nationalAmountDecimal; } 
@override int get hashCode { return Object.hash(localAmountDecimal, nationalAmountDecimal); } 
@override String toString() { return 'IssuingTransactionFleetTaxData(localAmountDecimal: $localAmountDecimal, nationalAmountDecimal: $nationalAmountDecimal)'; } 
 }
