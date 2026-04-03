// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'user.dart';/// Always `list`.
@immutable final class UserListResourceObject {const UserListResourceObject._(this.value);

factory UserListResourceObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => UserListResourceObject._(json),
}; }

static const UserListResourceObject list = UserListResourceObject._('list');

static const List<UserListResourceObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserListResourceObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UserListResourceObject($value)'; } 
 }
/// Paginated list of user objects returned when inspecting group membership.
@immutable final class UserListResource {const UserListResource({required this.object, required this.data, required this.hasMore, required this.next, });

factory UserListResource.fromJson(Map<String, dynamic> json) { return UserListResource(
  object: UserListResourceObject.fromJson(json['object'] as String),
  data: (json['data'] as List<dynamic>).map((e) => User.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  next: json['next'] as String?,
); }

/// Always `list`.
final UserListResourceObject object;

/// Users in the current page.
final List<User> data;

/// Whether more users are available when paginating.
final bool hasMore;

/// Cursor to fetch the next page of results, or `null` when no further users are available.
final String? next;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'data': data.map((e) => e.toJson()).toList(),
  'has_more': hasMore,
  'next': ?next,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('data') &&
      json.containsKey('has_more') && json['has_more'] is bool &&
      json.containsKey('next') && json['next'] is String; } 
UserListResource copyWith({UserListResourceObject? object, List<User>? data, bool? hasMore, String? Function()? next, }) { return UserListResource(
  object: object ?? this.object,
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  next: next != null ? next() : this.next,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserListResource &&
          object == other.object &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          next == other.next; } 
@override int get hashCode { return Object.hash(object, Object.hashAll(data), hasMore, next); } 
@override String toString() { return 'UserListResource(object: $object, data: $data, hasMore: $hasMore, next: $next)'; } 
 }
