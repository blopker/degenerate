// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget {const WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget({this.from});

factory WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget(
  from: json['from'] as String?,
); }

final String? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from'}.contains(key)); } 
WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget copyWith({String Function()? from}) { return WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesTarget(from: $from)'; } 
 }
