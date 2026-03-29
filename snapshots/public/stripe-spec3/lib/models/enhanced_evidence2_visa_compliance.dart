// GENERATED CODE - DO NOT MODIFY BY HAND

final class EnhancedEvidence2VisaCompliance {const EnhancedEvidence2VisaCompliance({this.feeAcknowledged});

factory EnhancedEvidence2VisaCompliance.fromJson(Map<String, dynamic> json) { return EnhancedEvidence2VisaCompliance(
  feeAcknowledged: json['fee_acknowledged'] as bool?,
); }

final bool? feeAcknowledged;

Map<String, dynamic> toJson() { return {
  'fee_acknowledged': ?feeAcknowledged,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
EnhancedEvidence2VisaCompliance copyWith({bool Function()? feeAcknowledged}) { return EnhancedEvidence2VisaCompliance(
  feeAcknowledged: feeAcknowledged != null ? feeAcknowledged() : this.feeAcknowledged,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EnhancedEvidence2VisaCompliance &&
          feeAcknowledged == other.feeAcknowledged; } 
@override int get hashCode { return feeAcknowledged.hashCode; } 
@override String toString() { return 'EnhancedEvidence2VisaCompliance(feeAcknowledged: $feeAcknowledged)'; } 
 }
