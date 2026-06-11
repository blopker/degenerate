// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_document_fingerprint.dart';import 'dlp_messages2.dart';@immutable final class DlpDocumentFingerprintsCreateResponse {const DlpDocumentFingerprintsCreateResponse({required this.errors, required this.messages, required this.success, this.result, });

factory DlpDocumentFingerprintsCreateResponse.fromJson(Map<String, dynamic> json) { return DlpDocumentFingerprintsCreateResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DlpMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DlpMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? DlpDocumentFingerprint.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DlpMessages2> errors;

final List<DlpMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DlpDocumentFingerprint? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DlpDocumentFingerprintsCreateResponse copyWith({List<DlpMessages2>? errors, List<DlpMessages2>? messages, bool? success, DlpDocumentFingerprint Function()? result, }) { return DlpDocumentFingerprintsCreateResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDocumentFingerprintsCreateResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DlpDocumentFingerprintsCreateResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
