// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_repository_transferred_changes_owner_from.dart';@immutable final class WebhookRepositoryTransferredChangesOwner {const WebhookRepositoryTransferredChangesOwner({required this.from});

factory WebhookRepositoryTransferredChangesOwner.fromJson(Map<String, dynamic> json) { return WebhookRepositoryTransferredChangesOwner(
  from: WebhookRepositoryTransferredChangesOwnerFrom.fromJson(json['from'] as Map<String, dynamic>),
); }

final WebhookRepositoryTransferredChangesOwnerFrom from;

Map<String, dynamic> toJson() { return {
  'from': from.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from'); } 
WebhookRepositoryTransferredChangesOwner copyWith({WebhookRepositoryTransferredChangesOwnerFrom? from}) { return WebhookRepositoryTransferredChangesOwner(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryTransferredChangesOwner &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookRepositoryTransferredChangesOwner(from: $from)'; } 
 }
