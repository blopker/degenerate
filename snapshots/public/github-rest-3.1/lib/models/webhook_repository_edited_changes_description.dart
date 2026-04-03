// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookRepositoryEditedChangesDescription {const WebhookRepositoryEditedChangesDescription({required this.from});

factory WebhookRepositoryEditedChangesDescription.fromJson(Map<String, dynamic> json) { return WebhookRepositoryEditedChangesDescription(
  from: json['from'] as String?,
); }

final String? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookRepositoryEditedChangesDescription copyWith({String? Function()? from}) { return WebhookRepositoryEditedChangesDescription(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryEditedChangesDescription &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookRepositoryEditedChangesDescription(from: $from)'; } 
 }
