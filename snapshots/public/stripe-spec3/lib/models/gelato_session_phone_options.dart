// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class GelatoSessionPhoneOptions {const GelatoSessionPhoneOptions({this.requireVerification});

factory GelatoSessionPhoneOptions.fromJson(Map<String, dynamic> json) { return GelatoSessionPhoneOptions(
  requireVerification: json['require_verification'] as bool?,
); }

/// Request one time password verification of `provided_details.phone`.
final bool? requireVerification;

Map<String, dynamic> toJson() { return {
  'require_verification': ?requireVerification,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'require_verification'}.contains(key)); } 
GelatoSessionPhoneOptions copyWith({bool Function()? requireVerification}) { return GelatoSessionPhoneOptions(
  requireVerification: requireVerification != null ? requireVerification() : this.requireVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoSessionPhoneOptions &&
          requireVerification == other.requireVerification; } 
@override int get hashCode { return requireVerification.hashCode; } 
@override String toString() { return 'GelatoSessionPhoneOptions(requireVerification: $requireVerification)'; } 
 }
