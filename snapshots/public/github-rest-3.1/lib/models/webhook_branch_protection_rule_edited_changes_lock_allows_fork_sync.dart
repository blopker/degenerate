// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookBranchProtectionRuleEditedChangesLockAllowsForkSync {const WebhookBranchProtectionRuleEditedChangesLockAllowsForkSync({required this.from});

factory WebhookBranchProtectionRuleEditedChangesLockAllowsForkSync.fromJson(Map<String, dynamic> json) { return WebhookBranchProtectionRuleEditedChangesLockAllowsForkSync(
  from: json['from'] as bool?,
); }

final bool? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is bool; } 
WebhookBranchProtectionRuleEditedChangesLockAllowsForkSync copyWith({bool? Function()? from}) { return WebhookBranchProtectionRuleEditedChangesLockAllowsForkSync(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookBranchProtectionRuleEditedChangesLockAllowsForkSync &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookBranchProtectionRuleEditedChangesLockAllowsForkSync(from: $from)'; } 
 }
