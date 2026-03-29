// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class IssuingTransactionLodgingData {const IssuingTransactionLodgingData({this.checkInAt, this.nights, });

factory IssuingTransactionLodgingData.fromJson(Map<String, dynamic> json) { return IssuingTransactionLodgingData(
  checkInAt: json['check_in_at'] != null ? (json['check_in_at'] as num).toInt() : null,
  nights: json['nights'] != null ? (json['nights'] as num).toInt() : null,
); }

/// The time of checking into the lodging.
final int? checkInAt;

/// The number of nights stayed at the lodging.
final int? nights;

Map<String, dynamic> toJson() { return {
  'check_in_at': ?checkInAt,
  'nights': ?nights,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IssuingTransactionLodgingData copyWith({int? Function()? checkInAt, int? Function()? nights, }) { return IssuingTransactionLodgingData(
  checkInAt: checkInAt != null ? checkInAt() : this.checkInAt,
  nights: nights != null ? nights() : this.nights,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionLodgingData &&
          checkInAt == other.checkInAt &&
          nights == other.nights; } 
@override int get hashCode { return Object.hash(checkInAt, nights); } 
@override String toString() { return 'IssuingTransactionLodgingData(checkInAt: $checkInAt, nights: $nights)'; } 
 }
