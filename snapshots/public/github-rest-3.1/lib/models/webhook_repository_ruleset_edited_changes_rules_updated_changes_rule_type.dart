// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType {const WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType({this.from});

factory WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType(
  from: json['from'] as String?,
); }

final String? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from'}.contains(key)); } 
WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType copyWith({String Function()? from}) { return WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookRepositoryRulesetEditedChangesRulesUpdatedChangesRuleType(from: $from)'; } 
 }
