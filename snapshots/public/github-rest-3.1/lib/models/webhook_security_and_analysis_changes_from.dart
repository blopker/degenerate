// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'security_and_analysis.dart';@immutable final class WebhookSecurityAndAnalysisChangesFrom {const WebhookSecurityAndAnalysisChangesFrom({this.securityAndAnalysis = const Omittable.absent()});

factory WebhookSecurityAndAnalysisChangesFrom.fromJson(Map<String, dynamic> json) { return WebhookSecurityAndAnalysisChangesFrom(
  securityAndAnalysis: json.containsKey('security_and_analysis') ? Omittable(json['security_and_analysis'] != null ? SecurityAndAnalysis.fromJson(json['security_and_analysis'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

final Omittable<SecurityAndAnalysis?> securityAndAnalysis;

Map<String, dynamic> toJson() { return {
  if (securityAndAnalysis.isPresent) 'security_and_analysis': securityAndAnalysis.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'security_and_analysis'}.contains(key)); } 
WebhookSecurityAndAnalysisChangesFrom copyWith({Omittable<SecurityAndAnalysis?>? securityAndAnalysis}) { return WebhookSecurityAndAnalysisChangesFrom(
  securityAndAnalysis: securityAndAnalysis ?? this.securityAndAnalysis,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookSecurityAndAnalysisChangesFrom &&
          securityAndAnalysis == other.securityAndAnalysis; } 
@override int get hashCode { return securityAndAnalysis.hashCode; } 
@override String toString() { return 'WebhookSecurityAndAnalysisChangesFrom(securityAndAnalysis: $securityAndAnalysis)'; } 
 }
