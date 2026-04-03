// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostForwardingRequestsRequestRequestHeaders {const PostForwardingRequestsRequestRequestHeaders({required this.name, required this.value, });

factory PostForwardingRequestsRequestRequestHeaders.fromJson(Map<String, dynamic> json) { return PostForwardingRequestsRequestRequestHeaders(
  name: json['name'] as String,
  value: json['value'] as String,
); }

final String name;

final String value;

Map<String, dynamic> toJson() { return {
  'name': name,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('value') && json['value'] is String; } 
PostForwardingRequestsRequestRequestHeaders copyWith({String? name, String? value, }) { return PostForwardingRequestsRequestRequestHeaders(
  name: name ?? this.name,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostForwardingRequestsRequestRequestHeaders &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'PostForwardingRequestsRequestRequestHeaders(name: $name, value: $value)'; } 
 }
