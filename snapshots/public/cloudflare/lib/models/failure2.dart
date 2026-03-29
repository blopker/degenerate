// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'error_model32.dart';final class Failure2 {const Failure2({this.errors, this.messages, this.success, });

factory Failure2.fromJson(Map<String, dynamic> json) { return Failure2(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => ErrorModel32.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  success: json['success'] as bool?,
); }

final List<ErrorModel32>? errors;

final List<String>? messages;

/// Indicates if the API call was successful or not.
final bool? success;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'messages': ?messages,
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Failure2 copyWith({List<ErrorModel32> Function()? errors, List<String> Function()? messages, bool Function()? success, }) { return Failure2(
  errors: errors != null ? errors() : this.errors,
  messages: messages != null ? messages() : this.messages,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Failure2 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(messages ?? const []), success); } 
@override String toString() { return 'Failure2(errors: $errors, messages: $messages, success: $success)'; } 
 }
