// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CustomIndicatorFeedsPermissionsUpdate {const CustomIndicatorFeedsPermissionsUpdate({this.success});

factory CustomIndicatorFeedsPermissionsUpdate.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsPermissionsUpdate(
  success: json['success'] as bool?,
); }

/// Whether the update succeeded or not
final bool? success;

Map<String, dynamic> toJson() { return {
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'success'}.contains(key)); } 
CustomIndicatorFeedsPermissionsUpdate copyWith({bool Function()? success}) { return CustomIndicatorFeedsPermissionsUpdate(
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsPermissionsUpdate &&
          success == other.success; } 
@override int get hashCode { return success.hashCode; } 
@override String toString() { return 'CustomIndicatorFeedsPermissionsUpdate(success: $success)'; } 
 }
