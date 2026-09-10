// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhooks_reviewers2_reviewer.dart';@immutable final class WebhooksReviewers2Type {const WebhooksReviewers2Type._(this.value);

factory WebhooksReviewers2Type.fromJson(String json) { return switch (json) {
  'User' => user,
  _ => WebhooksReviewers2Type._(json),
}; }

static const WebhooksReviewers2Type user = WebhooksReviewers2Type._('User');

static const List<WebhooksReviewers2Type> values = [user];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksReviewers2Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksReviewers2Type($value)'; } 
 }
@immutable final class WebhooksReviewers2 {const WebhooksReviewers2({this.reviewer = const Omittable.absent(), this.type, });

factory WebhooksReviewers2.fromJson(Map<String, dynamic> json) { return WebhooksReviewers2(
  reviewer: json.containsKey('reviewer') ? Omittable(json['reviewer'] != null ? WebhooksReviewers2Reviewer.fromJson(json['reviewer'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  type: json['type'] != null ? WebhooksReviewers2Type.fromJson(json['type'] as String) : null,
); }

final Omittable<WebhooksReviewers2Reviewer?> reviewer;

final WebhooksReviewers2Type? type;

Map<String, dynamic> toJson() { return {
  if (reviewer.isPresent) 'reviewer': reviewer.value?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reviewer', 'type'}.contains(key)); } 
WebhooksReviewers2 copyWith({Omittable<WebhooksReviewers2Reviewer?>? reviewer, WebhooksReviewers2Type? Function()? type, }) { return WebhooksReviewers2(
  reviewer: reviewer ?? this.reviewer,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksReviewers2 &&
          reviewer == other.reviewer &&
          type == other.type; } 
@override int get hashCode { return Object.hash(reviewer, type); } 
@override String toString() { return 'WebhooksReviewers2(reviewer: $reviewer, type: $type)'; } 
 }
