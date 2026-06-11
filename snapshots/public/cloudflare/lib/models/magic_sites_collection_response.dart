// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_messages2.dart';import 'magic_site.dart';@immutable final class MagicSitesCollectionResponse {const MagicSitesCollectionResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory MagicSitesCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicSitesCollectionResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => MagicMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => MagicMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => MagicSite.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<MagicMessages2> errors;

final List<MagicMessages2> messages;

final List<MagicSite> result;

/// Whether the API call was successful
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
MagicSitesCollectionResponse copyWith({List<MagicMessages2>? errors, List<MagicMessages2>? messages, List<MagicSite>? result, bool? success, }) { return MagicSitesCollectionResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSitesCollectionResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success); } 
@override String toString() { return 'MagicSitesCollectionResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
