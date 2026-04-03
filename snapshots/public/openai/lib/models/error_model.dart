// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ErrorModel {const ErrorModel({required this.code, required this.message, required this.param, required this.type, });

factory ErrorModel.fromJson(Map<String, dynamic> json) { return ErrorModel(
  code: json['code'] as String?,
  message: json['message'] as String,
  param: json['param'] as String?,
  type: json['type'] as String,
); }

final String? code;

final String message;

final String? param;

final String type;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': message,
  'param': ?param,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is String &&
      json.containsKey('message') && json['message'] is String &&
      json.containsKey('param') && json['param'] is String &&
      json.containsKey('type') && json['type'] is String; } 
ErrorModel copyWith({String? Function()? code, String? message, String? Function()? param, String? type, }) { return ErrorModel(
  code: code != null ? code() : this.code,
  message: message ?? this.message,
  param: param != null ? param() : this.param,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ErrorModel &&
          code == other.code &&
          message == other.message &&
          param == other.param &&
          type == other.type; } 
@override int get hashCode { return Object.hash(code, message, param, type); } 
@override String toString() { return 'ErrorModel(code: $code, message: $message, param: $param, type: $type)'; } 
 }
