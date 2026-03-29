// GENERATED CODE - DO NOT MODIFY BY HAND

final class BillingGetGithubBillingPremiumRequestUsageReportUserResponse503 {const BillingGetGithubBillingPremiumRequestUsageReportUserResponse503({this.code, this.message, this.documentationUrl, });

factory BillingGetGithubBillingPremiumRequestUsageReportUserResponse503.fromJson(Map<String, dynamic> json) { return BillingGetGithubBillingPremiumRequestUsageReportUserResponse503(
  code: json['code'] as String?,
  message: json['message'] as String?,
  documentationUrl: json['documentation_url'] as String?,
); }

final String? code;

final String? message;

final String? documentationUrl;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': ?message,
  'documentation_url': ?documentationUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BillingGetGithubBillingPremiumRequestUsageReportUserResponse503 copyWith({String Function()? code, String Function()? message, String Function()? documentationUrl, }) { return BillingGetGithubBillingPremiumRequestUsageReportUserResponse503(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingGetGithubBillingPremiumRequestUsageReportUserResponse503 &&
          code == other.code &&
          message == other.message &&
          documentationUrl == other.documentationUrl; } 
@override int get hashCode { return Object.hash(code, message, documentationUrl); } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportUserResponse503(code: $code, message: $message, documentationUrl: $documentationUrl)'; } 
 }
