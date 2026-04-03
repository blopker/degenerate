// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookBranchProtectionRuleEditedChangesAuthorizedDismissalActorsOnly {const WebhookBranchProtectionRuleEditedChangesAuthorizedDismissalActorsOnly({required this.from});

factory WebhookBranchProtectionRuleEditedChangesAuthorizedDismissalActorsOnly.fromJson(Map<String, dynamic> json) { return WebhookBranchProtectionRuleEditedChangesAuthorizedDismissalActorsOnly(
  from: json['from'] as bool?,
); }

final bool? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is bool; } 
WebhookBranchProtectionRuleEditedChangesAuthorizedDismissalActorsOnly copyWith({bool? Function()? from}) { return WebhookBranchProtectionRuleEditedChangesAuthorizedDismissalActorsOnly(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookBranchProtectionRuleEditedChangesAuthorizedDismissalActorsOnly &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookBranchProtectionRuleEditedChangesAuthorizedDismissalActorsOnly(from: $from)'; } 
 }
