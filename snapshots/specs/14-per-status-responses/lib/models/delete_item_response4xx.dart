// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteItemResponse4xx {const DeleteItemResponse4xx({required this.code});

factory DeleteItemResponse4xx.fromJson(Map<String, dynamic> json) { return DeleteItemResponse4xx(
  code: (json['code'] as num).toInt(),
); }

final int code;

Map<String, dynamic> toJson() { return {
  'code': code,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num; } 
DeleteItemResponse4xx copyWith({int? code}) { return DeleteItemResponse4xx(
  code: code ?? this.code,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteItemResponse4xx &&
          code == other.code; } 
@override int get hashCode { return code.hashCode; } 
@override String toString() { return 'DeleteItemResponse4xx(code: $code)'; } 
 }
