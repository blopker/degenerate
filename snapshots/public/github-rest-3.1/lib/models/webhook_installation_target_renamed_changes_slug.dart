// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookInstallationTargetRenamedChangesSlug {const WebhookInstallationTargetRenamedChangesSlug({required this.from});

factory WebhookInstallationTargetRenamedChangesSlug.fromJson(Map<String, dynamic> json) { return WebhookInstallationTargetRenamedChangesSlug(
  from: json['from'] as String,
); }

final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookInstallationTargetRenamedChangesSlug copyWith({String? from}) { return WebhookInstallationTargetRenamedChangesSlug(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookInstallationTargetRenamedChangesSlug &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookInstallationTargetRenamedChangesSlug(from: $from)'; } 
 }
