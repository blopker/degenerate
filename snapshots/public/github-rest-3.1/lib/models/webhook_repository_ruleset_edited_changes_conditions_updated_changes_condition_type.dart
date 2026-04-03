// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType {const WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType({this.from});

factory WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType(
  from: json['from'] as String?,
); }

final String? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from'}.contains(key)); } 
WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType copyWith({String Function()? from}) { return WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesConditionType(from: $from)'; } 
 }
