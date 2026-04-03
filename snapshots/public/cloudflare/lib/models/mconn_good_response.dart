// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_coded_message.dart';@immutable final class MconnGoodResponse {const MconnGoodResponse({required this.messages, required this.success, required this.errors, });

factory MconnGoodResponse.fromJson(Map<String, dynamic> json) { return MconnGoodResponse(
  messages: (json['messages'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => MconnCodedMessage.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MconnCodedMessage> messages;

final bool success;

final List<MconnCodedMessage> errors;

Map<String, dynamic> toJson() { return {
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'errors': errors.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('errors'); } 
MconnGoodResponse copyWith({List<MconnCodedMessage>? messages, bool? success, List<MconnCodedMessage>? errors, }) { return MconnGoodResponse(
  messages: messages ?? this.messages,
  success: success ?? this.success,
  errors: errors ?? this.errors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnGoodResponse &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(errors, other.errors); } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), success, Object.hashAll(errors)); } 
@override String toString() { return 'MconnGoodResponse(messages: $messages, success: $success, errors: $errors)'; } 
 }
