// GENERATED CODE - DO NOT MODIFY BY HAND

import 'web_search_location.dart';/// The type of location approximation. Always `approximate`.
/// 
final class CreateChatCompletionRequestWebSearchOptionsUserLocationType {const CreateChatCompletionRequestWebSearchOptionsUserLocationType._(this.value);

factory CreateChatCompletionRequestWebSearchOptionsUserLocationType.fromJson(String json) { return switch (json) {
  'approximate' => approximate,
  _ => CreateChatCompletionRequestWebSearchOptionsUserLocationType._(json),
}; }

static const CreateChatCompletionRequestWebSearchOptionsUserLocationType approximate = CreateChatCompletionRequestWebSearchOptionsUserLocationType._('approximate');

static const List<CreateChatCompletionRequestWebSearchOptionsUserLocationType> values = [approximate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestWebSearchOptionsUserLocationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestWebSearchOptionsUserLocationType($value)'; } 
 }
/// Approximate location parameters for the search.
/// 
final class CreateChatCompletionRequestWebSearchOptionsUserLocation {const CreateChatCompletionRequestWebSearchOptionsUserLocation({required this.type, required this.approximate, });

factory CreateChatCompletionRequestWebSearchOptionsUserLocation.fromJson(Map<String, dynamic> json) { return CreateChatCompletionRequestWebSearchOptionsUserLocation(
  type: CreateChatCompletionRequestWebSearchOptionsUserLocationType.fromJson(json['type'] as String),
  approximate: WebSearchLocation.fromJson(json['approximate'] as Map<String, dynamic>),
); }

/// The type of location approximation. Always `approximate`.
/// 
final CreateChatCompletionRequestWebSearchOptionsUserLocationType type;

final WebSearchLocation approximate;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'approximate': approximate.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('approximate'); } 
CreateChatCompletionRequestWebSearchOptionsUserLocation copyWith({CreateChatCompletionRequestWebSearchOptionsUserLocationType? type, WebSearchLocation? approximate, }) { return CreateChatCompletionRequestWebSearchOptionsUserLocation(
  type: type ?? this.type,
  approximate: approximate ?? this.approximate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateChatCompletionRequestWebSearchOptionsUserLocation &&
          type == other.type &&
          approximate == other.approximate; } 
@override int get hashCode { return Object.hash(type, approximate); } 
@override String toString() { return 'CreateChatCompletionRequestWebSearchOptionsUserLocation(type: $type, approximate: $approximate)'; } 
 }
