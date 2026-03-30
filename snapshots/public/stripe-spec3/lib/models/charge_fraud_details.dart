// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class ChargeFraudDetails {const ChargeFraudDetails({this.stripeReport, this.userReport, });

factory ChargeFraudDetails.fromJson(Map<String, dynamic> json) { return ChargeFraudDetails(
  stripeReport: json['stripe_report'] as String?,
  userReport: json['user_report'] as String?,
); }

/// Assessments from Stripe. If set, the value is `fraudulent`.
final String? stripeReport;

/// Assessments reported by you. If set, possible values of are `safe` and `fraudulent`.
final String? userReport;

Map<String, dynamic> toJson() { return {
  'stripe_report': ?stripeReport,
  'user_report': ?userReport,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'stripe_report', 'user_report'}.contains(key)); } 
ChargeFraudDetails copyWith({String Function()? stripeReport, String Function()? userReport, }) { return ChargeFraudDetails(
  stripeReport: stripeReport != null ? stripeReport() : this.stripeReport,
  userReport: userReport != null ? userReport() : this.userReport,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChargeFraudDetails &&
          stripeReport == other.stripeReport &&
          userReport == other.userReport; } 
@override int get hashCode { return Object.hash(stripeReport, userReport); } 
@override String toString() { return 'ChargeFraudDetails(stripeReport: $stripeReport, userReport: $userReport)'; } 
 }
