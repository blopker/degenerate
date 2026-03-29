// GENERATED CODE - DO NOT MODIFY BY HAND

import 'charge_fraud_details.dart';/// Information on fraud assessments for the charge.
final class ChargeFraudDetails2 {const ChargeFraudDetails2({this.chargeFraudDetails});

factory ChargeFraudDetails2.fromJson(Map<String, dynamic> json) { return ChargeFraudDetails2(
  chargeFraudDetails: ChargeFraudDetails.canParse(json) ? ChargeFraudDetails.fromJson(json) : null,
); }

final ChargeFraudDetails? chargeFraudDetails;

/// At least one variant must be present.
bool get isValid { return chargeFraudDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?chargeFraudDetails?.toJson(),
}; } 
 }
