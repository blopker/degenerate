// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIndicatorTypeCreateRequest {const PostIndicatorTypeCreateRequest({required this.indicatorType, this.description, });

factory PostIndicatorTypeCreateRequest.fromJson(Map<String, dynamic> json) { return PostIndicatorTypeCreateRequest(
  description: json['description'] as String?,
  indicatorType: json['indicatorType'] as String,
); }

/// Optional description for the indicator type
final String? description;

/// The indicator type to create (e.g., 'DOMAIN', 'IP', 'URL', 'HASH', 'EMAIL')
final String indicatorType;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'indicatorType': indicatorType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('indicatorType') && json['indicatorType'] is String; } 
PostIndicatorTypeCreateRequest copyWith({String Function()? description, String? indicatorType, }) { return PostIndicatorTypeCreateRequest(
  description: description != null ? description() : this.description,
  indicatorType: indicatorType ?? this.indicatorType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIndicatorTypeCreateRequest &&
          description == other.description &&
          indicatorType == other.indicatorType; } 
@override int get hashCode { return Object.hash(description, indicatorType); } 
@override String toString() { return 'PostIndicatorTypeCreateRequest(description: $description, indicatorType: $indicatorType)'; } 
 }
