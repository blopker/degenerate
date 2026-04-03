// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingCardShippingCustoms {const IssuingCardShippingCustoms({this.eoriNumber});

factory IssuingCardShippingCustoms.fromJson(Map<String, dynamic> json) { return IssuingCardShippingCustoms(
  eoriNumber: json['eori_number'] as String?,
); }

/// A registration number used for customs in Europe. See [https://www.gov.uk/eori](https://www.gov.uk/eori) for the UK and [https://ec.europa.eu/taxation_customs/business/customs-procedures-import-and-export/customs-procedures/economic-operators-registration-and-identification-number-eori_en](https://ec.europa.eu/taxation_customs/business/customs-procedures-import-and-export/customs-procedures/economic-operators-registration-and-identification-number-eori_en) for the EU.
final String? eoriNumber;

Map<String, dynamic> toJson() { return {
  'eori_number': ?eoriNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'eori_number'}.contains(key)); } 
IssuingCardShippingCustoms copyWith({String? Function()? eoriNumber}) { return IssuingCardShippingCustoms(
  eoriNumber: eoriNumber != null ? eoriNumber() : this.eoriNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardShippingCustoms &&
          eoriNumber == other.eoriNumber; } 
@override int get hashCode { return eoriNumber.hashCode; } 
@override String toString() { return 'IssuingCardShippingCustoms(eoriNumber: $eoriNumber)'; } 
 }
