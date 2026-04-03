// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_discussion_category_changed_changes_category_from.dart';@immutable final class WebhookDiscussionCategoryChangedChangesCategory {const WebhookDiscussionCategoryChangedChangesCategory({required this.from});

factory WebhookDiscussionCategoryChangedChangesCategory.fromJson(Map<String, dynamic> json) { return WebhookDiscussionCategoryChangedChangesCategory(
  from: WebhookDiscussionCategoryChangedChangesCategoryFrom.fromJson(json['from'] as Map<String, dynamic>),
); }

final WebhookDiscussionCategoryChangedChangesCategoryFrom from;

Map<String, dynamic> toJson() { return {
  'from': from.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from'); } 
WebhookDiscussionCategoryChangedChangesCategory copyWith({WebhookDiscussionCategoryChangedChangesCategoryFrom? from}) { return WebhookDiscussionCategoryChangedChangesCategory(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDiscussionCategoryChangedChangesCategory &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookDiscussionCategoryChangedChangesCategory(from: $from)'; } 
 }
