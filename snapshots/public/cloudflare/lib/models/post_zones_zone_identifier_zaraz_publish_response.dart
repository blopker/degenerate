// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_messages2.dart';@immutable final class PostZonesZoneIdentifierZarazPublishResponse {const PostZonesZoneIdentifierZarazPublishResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory PostZonesZoneIdentifierZarazPublishResponse.fromJson(Map<String, dynamic> json) { return PostZonesZoneIdentifierZarazPublishResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZarazMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZarazMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] as String,
); }

final List<ZarazMessages2> errors;

final List<ZarazMessages2> messages;

/// Whether the API call was successful
final bool success;

final String result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result') && json['result'] is String; } 
PostZonesZoneIdentifierZarazPublishResponse copyWith({List<ZarazMessages2>? errors, List<ZarazMessages2>? messages, bool? success, String? result, }) { return PostZonesZoneIdentifierZarazPublishResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostZonesZoneIdentifierZarazPublishResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'PostZonesZoneIdentifierZarazPublishResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
