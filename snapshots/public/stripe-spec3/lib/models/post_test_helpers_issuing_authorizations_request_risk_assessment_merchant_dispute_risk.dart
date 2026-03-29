// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel {const PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel._(this.value);

factory PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel.fromJson(String json) { return switch (json) {
  'elevated' => elevated,
  'highest' => highest,
  'low' => low,
  'normal' => normal,
  'not_assessed' => notAssessed,
  'unknown' => unknown,
  _ => PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel._(json),
}; }

static const PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel elevated = PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel._('elevated');

static const PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel highest = PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel._('highest');

static const PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel low = PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel._('low');

static const PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel normal = PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel._('normal');

static const PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel notAssessed = PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel._('not_assessed');

static const PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel unknown = PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel._('unknown');

static const List<PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel> values = [elevated, highest, low, normal, notAssessed, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel($value)'; } 
 }
final class PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRisk {const PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRisk({this.disputeRate, required this.riskLevel, });

factory PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRisk.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRisk(
  disputeRate: json['dispute_rate'] != null ? (json['dispute_rate'] as num).toInt() : null,
  riskLevel: PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel.fromJson(json['risk_level'] as String),
); }

final int? disputeRate;

final PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel riskLevel;

Map<String, dynamic> toJson() { return {
  'dispute_rate': ?disputeRate,
  'risk_level': riskLevel.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('risk_level'); } 
PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRisk copyWith({int Function()? disputeRate, PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRiskRiskLevel? riskLevel, }) { return PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRisk(
  disputeRate: disputeRate != null ? disputeRate() : this.disputeRate,
  riskLevel: riskLevel ?? this.riskLevel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRisk &&
          disputeRate == other.disputeRate &&
          riskLevel == other.riskLevel; } 
@override int get hashCode { return Object.hash(disputeRate, riskLevel); } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestRiskAssessmentMerchantDisputeRisk(disputeRate: $disputeRate, riskLevel: $riskLevel)'; } 
 }
