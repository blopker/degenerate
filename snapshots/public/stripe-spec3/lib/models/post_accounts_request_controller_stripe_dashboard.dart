// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestControllerStripeDashboardType {const PostAccountsRequestControllerStripeDashboardType._(this.value);

factory PostAccountsRequestControllerStripeDashboardType.fromJson(String json) { return switch (json) {
  'express' => express,
  'full' => full,
  'none' => none,
  _ => PostAccountsRequestControllerStripeDashboardType._(json),
}; }

static const PostAccountsRequestControllerStripeDashboardType express = PostAccountsRequestControllerStripeDashboardType._('express');

static const PostAccountsRequestControllerStripeDashboardType full = PostAccountsRequestControllerStripeDashboardType._('full');

static const PostAccountsRequestControllerStripeDashboardType none = PostAccountsRequestControllerStripeDashboardType._('none');

static const List<PostAccountsRequestControllerStripeDashboardType> values = [express, full, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestControllerStripeDashboardType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestControllerStripeDashboardType($value)'; } 
 }
final class PostAccountsRequestControllerStripeDashboard {const PostAccountsRequestControllerStripeDashboard({this.type});

factory PostAccountsRequestControllerStripeDashboard.fromJson(Map<String, dynamic> json) { return PostAccountsRequestControllerStripeDashboard(
  type: json['type'] != null ? PostAccountsRequestControllerStripeDashboardType.fromJson(json['type'] as String) : null,
); }

final PostAccountsRequestControllerStripeDashboardType? type;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestControllerStripeDashboard copyWith({PostAccountsRequestControllerStripeDashboardType Function()? type}) { return PostAccountsRequestControllerStripeDashboard(
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestControllerStripeDashboard &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'PostAccountsRequestControllerStripeDashboard(type: $type)'; } 
 }
