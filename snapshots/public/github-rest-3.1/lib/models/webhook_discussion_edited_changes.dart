// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_discussion_edited_changes_body.dart';import 'webhook_discussion_edited_changes_title.dart';@immutable final class WebhookDiscussionEditedChanges {const WebhookDiscussionEditedChanges({this.body, this.title, });

factory WebhookDiscussionEditedChanges.fromJson(Map<String, dynamic> json) { return WebhookDiscussionEditedChanges(
  body: json['body'] != null ? WebhookDiscussionEditedChangesBody.fromJson(json['body'] as Map<String, dynamic>) : null,
  title: json['title'] != null ? WebhookDiscussionEditedChangesTitle.fromJson(json['title'] as Map<String, dynamic>) : null,
); }

final WebhookDiscussionEditedChangesBody? body;

final WebhookDiscussionEditedChangesTitle? title;

Map<String, dynamic> toJson() { return {
  if (body != null) 'body': body?.toJson(),
  if (title != null) 'title': title?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'body', 'title'}.contains(key)); } 
WebhookDiscussionEditedChanges copyWith({WebhookDiscussionEditedChangesBody Function()? body, WebhookDiscussionEditedChangesTitle Function()? title, }) { return WebhookDiscussionEditedChanges(
  body: body != null ? body() : this.body,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDiscussionEditedChanges &&
          body == other.body &&
          title == other.title; } 
@override int get hashCode { return Object.hash(body, title); } 
@override String toString() { return 'WebhookDiscussionEditedChanges(body: $body, title: $title)'; } 
 }
