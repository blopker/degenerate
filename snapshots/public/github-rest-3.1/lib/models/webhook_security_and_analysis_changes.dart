// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_security_and_analysis_changes_from.dart';final class WebhookSecurityAndAnalysisChanges {const WebhookSecurityAndAnalysisChanges({this.from});

factory WebhookSecurityAndAnalysisChanges.fromJson(Map<String, dynamic> json) { return WebhookSecurityAndAnalysisChanges(
  from: json['from'] != null ? WebhookSecurityAndAnalysisChangesFrom.fromJson(json['from'] as Map<String, dynamic>) : null,
); }

final WebhookSecurityAndAnalysisChangesFrom? from;

Map<String, dynamic> toJson() { return {
  if (from != null) 'from': from?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WebhookSecurityAndAnalysisChanges copyWith({WebhookSecurityAndAnalysisChangesFrom Function()? from}) { return WebhookSecurityAndAnalysisChanges(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookSecurityAndAnalysisChanges &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookSecurityAndAnalysisChanges(from: $from)'; } 
 }
