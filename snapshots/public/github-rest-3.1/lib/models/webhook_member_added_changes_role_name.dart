// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The role assigned to the collaborator.
@immutable final class WebhookMemberAddedChangesRoleName {const WebhookMemberAddedChangesRoleName({required this.to});

factory WebhookMemberAddedChangesRoleName.fromJson(Map<String, dynamic> json) { return WebhookMemberAddedChangesRoleName(
  to: json['to'] as String,
); }

final String to;

Map<String, dynamic> toJson() { return {
  'to': to,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('to') && json['to'] is String; } 
WebhookMemberAddedChangesRoleName copyWith({String? to}) { return WebhookMemberAddedChangesRoleName(
  to: to ?? this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookMemberAddedChangesRoleName &&
          to == other.to; } 
@override int get hashCode { return to.hashCode; } 
@override String toString() { return 'WebhookMemberAddedChangesRoleName(to: $to)'; } 
 }
