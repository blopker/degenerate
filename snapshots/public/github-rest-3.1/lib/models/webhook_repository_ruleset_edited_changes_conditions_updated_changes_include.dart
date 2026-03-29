// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude {const WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude({this.from});

factory WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude(
  from: (json['from'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude copyWith({List<String> Function()? from}) { return WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude &&
          listEquals(from, other.from); } 
@override int get hashCode { return Object.hashAll(from ?? const []).hashCode; } 
@override String toString() { return 'WebhookRepositoryRulesetEditedChangesConditionsUpdatedChangesInclude(from: $from)'; } 
 }
