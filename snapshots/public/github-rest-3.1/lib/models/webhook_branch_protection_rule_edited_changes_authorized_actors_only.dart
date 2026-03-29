// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookBranchProtectionRuleEditedChangesAuthorizedActorsOnly {const WebhookBranchProtectionRuleEditedChangesAuthorizedActorsOnly({required this.from});

factory WebhookBranchProtectionRuleEditedChangesAuthorizedActorsOnly.fromJson(Map<String, dynamic> json) { return WebhookBranchProtectionRuleEditedChangesAuthorizedActorsOnly(
  from: json['from'] as bool?,
); }

final bool? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is bool; } 
WebhookBranchProtectionRuleEditedChangesAuthorizedActorsOnly copyWith({bool? Function()? from}) { return WebhookBranchProtectionRuleEditedChangesAuthorizedActorsOnly(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookBranchProtectionRuleEditedChangesAuthorizedActorsOnly &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookBranchProtectionRuleEditedChangesAuthorizedActorsOnly(from: $from)'; } 
 }
