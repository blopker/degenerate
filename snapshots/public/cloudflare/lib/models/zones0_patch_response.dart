// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_messages2.dart';import 'zones_zone.dart';final class Zones0PatchResponse {const Zones0PatchResponse({required this.errors, required this.messages, required this.success, this.result, });

factory Zones0PatchResponse.fromJson(Map<String, dynamic> json) { return Zones0PatchResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZonesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZonesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? ZonesZone.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<ZonesMessages2> errors;

final List<ZonesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ZonesZone? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
Zones0PatchResponse copyWith({List<ZonesMessages2>? errors, List<ZonesMessages2>? messages, bool? success, ZonesZone Function()? result, }) { return Zones0PatchResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Zones0PatchResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'Zones0PatchResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
