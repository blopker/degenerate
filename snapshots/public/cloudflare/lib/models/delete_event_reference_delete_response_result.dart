// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteEventReferenceDeleteResponseResult {const DeleteEventReferenceDeleteResponseResult({required this.success});

factory DeleteEventReferenceDeleteResponseResult.fromJson(Map<String, dynamic> json) { return DeleteEventReferenceDeleteResponseResult(
  success: json['success'] as bool,
); }

final bool success;

Map<String, dynamic> toJson() { return {
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
DeleteEventReferenceDeleteResponseResult copyWith({bool? success}) { return DeleteEventReferenceDeleteResponseResult(
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteEventReferenceDeleteResponseResult &&
          success == other.success; } 
@override int get hashCode { return success.hashCode; } 
@override String toString() { return 'DeleteEventReferenceDeleteResponseResult(success: $success)'; } 
 }
