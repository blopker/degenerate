// GENERATED CODE - DO NOT MODIFY BY HAND

/// Code indicating that the user is not authorized to perform this action.
final class WorkersErrorAuthCode {const WorkersErrorAuthCode._(this.value);

factory WorkersErrorAuthCode.fromJson(int json) { return switch (json) {
  10023 => $10023,
  _ => WorkersErrorAuthCode._(json),
}; }

static const WorkersErrorAuthCode $10023 = WorkersErrorAuthCode._(10023);

static const List<WorkersErrorAuthCode> values = [$10023];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorAuthCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorAuthCode($value)'; } 
 }
final class WorkersErrorAuth {const WorkersErrorAuth({required this.code, required this.message, });

factory WorkersErrorAuth.fromJson(Map<String, dynamic> json) { return WorkersErrorAuth(
  code: WorkersErrorAuthCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that the user is not authorized to perform this action.
final WorkersErrorAuthCode code;

/// Message explaining that the user lacks access to this feature.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorAuth copyWith({WorkersErrorAuthCode? code, String? message, }) { return WorkersErrorAuth(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorAuth &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorAuth(code: $code, message: $message)'; } 
 }
