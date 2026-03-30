// GENERATED CODE - DO NOT MODIFY BY HAND

final class BillingGetGithubBillingUsageReportOrgResponse503 {const BillingGetGithubBillingUsageReportOrgResponse503({this.code, this.message, this.documentationUrl, });

factory BillingGetGithubBillingUsageReportOrgResponse503.fromJson(Map<String, dynamic> json) { return BillingGetGithubBillingUsageReportOrgResponse503(
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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'message', 'documentation_url'}.contains(key)); } 
BillingGetGithubBillingUsageReportOrgResponse503 copyWith({String Function()? code, String Function()? message, String Function()? documentationUrl, }) { return BillingGetGithubBillingUsageReportOrgResponse503(
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingGetGithubBillingUsageReportOrgResponse503 &&
          code == other.code &&
          message == other.message &&
          documentationUrl == other.documentationUrl; } 
@override int get hashCode { return Object.hash(code, message, documentationUrl); } 
@override String toString() { return 'BillingGetGithubBillingUsageReportOrgResponse503(code: $code, message: $message, documentationUrl: $documentationUrl)'; } 
 }
