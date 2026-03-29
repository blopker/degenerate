// GENERATED CODE - DO NOT MODIFY BY HAND

import 'security_and_analysis.dart';final class WebhookSecurityAndAnalysisChangesFrom {const WebhookSecurityAndAnalysisChangesFrom({this.securityAndAnalysis});

factory WebhookSecurityAndAnalysisChangesFrom.fromJson(Map<String, dynamic> json) { return WebhookSecurityAndAnalysisChangesFrom(
  securityAndAnalysis: json['security_and_analysis'] != null ? SecurityAndAnalysis.fromJson(json['security_and_analysis'] as Map<String, dynamic>) : null,
); }

final SecurityAndAnalysis? securityAndAnalysis;

Map<String, dynamic> toJson() { return {
  if (securityAndAnalysis != null) 'security_and_analysis': securityAndAnalysis?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WebhookSecurityAndAnalysisChangesFrom copyWith({SecurityAndAnalysis Function()? securityAndAnalysis}) { return WebhookSecurityAndAnalysisChangesFrom(
  securityAndAnalysis: securityAndAnalysis != null ? securityAndAnalysis() : this.securityAndAnalysis,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookSecurityAndAnalysisChangesFrom &&
          securityAndAnalysis == other.securityAndAnalysis; } 
@override int get hashCode { return securityAndAnalysis.hashCode; } 
@override String toString() { return 'WebhookSecurityAndAnalysisChangesFrom(securityAndAnalysis: $securityAndAnalysis)'; } 
 }
