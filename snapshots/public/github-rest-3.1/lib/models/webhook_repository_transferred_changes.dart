// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_repository_transferred_changes_owner.dart';@immutable final class WebhookRepositoryTransferredChanges {const WebhookRepositoryTransferredChanges({required this.owner});

factory WebhookRepositoryTransferredChanges.fromJson(Map<String, dynamic> json) { return WebhookRepositoryTransferredChanges(
  owner: WebhookRepositoryTransferredChangesOwner.fromJson(json['owner'] as Map<String, dynamic>),
); }

final WebhookRepositoryTransferredChangesOwner owner;

Map<String, dynamic> toJson() { return {
  'owner': owner.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('owner'); } 
WebhookRepositoryTransferredChanges copyWith({WebhookRepositoryTransferredChangesOwner? owner}) { return WebhookRepositoryTransferredChanges(
  owner: owner ?? this.owner,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryTransferredChanges &&
          owner == other.owner; } 
@override int get hashCode { return owner.hashCode; } 
@override String toString() { return 'WebhookRepositoryTransferredChanges(owner: $owner)'; } 
 }
