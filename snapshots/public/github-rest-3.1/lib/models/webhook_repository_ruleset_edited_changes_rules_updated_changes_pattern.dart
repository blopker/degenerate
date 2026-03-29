// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern {const WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern({this.from});

factory WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern(
  from: json['from'] as String?,
); }

final String? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern copyWith({String Function()? from}) { return WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesPattern(from: $from)'; } 
 }
