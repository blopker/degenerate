// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A pending safety check for the computer call.
@immutable final class ComputerCallSafetyCheckParam {const ComputerCallSafetyCheckParam({required this.id, this.code = const Omittable.absent(), this.message = const Omittable.absent(), });

factory ComputerCallSafetyCheckParam.fromJson(Map<String, dynamic> json) { return ComputerCallSafetyCheckParam(
  id: json['id'] as String,
  code: json.containsKey('code') ? Omittable(json['code'] as String?) : const Omittable.absent(),
  message: json.containsKey('message') ? Omittable(json['message'] as String?) : const Omittable.absent(),
); }

/// The ID of the pending safety check.
final String id;

/// The type of the pending safety check.
final Omittable<String?> code;

/// Details about the pending safety check.
final Omittable<String?> message;

Map<String, dynamic> toJson() { return {
  'id': id,
  if (code.isPresent) 'code': code.value,
  if (message.isPresent) 'message': message.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
ComputerCallSafetyCheckParam copyWith({String? id, Omittable<String?>? code, Omittable<String?>? message, }) { return ComputerCallSafetyCheckParam(
  id: id ?? this.id,
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ComputerCallSafetyCheckParam &&
          id == other.id &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(id, code, message); } 
@override String toString() { return 'ComputerCallSafetyCheckParam(id: $id, code: $code, message: $message)'; } 
 }
