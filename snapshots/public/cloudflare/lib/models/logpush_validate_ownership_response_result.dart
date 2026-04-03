// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class LogpushValidateOwnershipResponseResult {const LogpushValidateOwnershipResponseResult({this.valid});

factory LogpushValidateOwnershipResponseResult.fromJson(Map<String, dynamic> json) { return LogpushValidateOwnershipResponseResult(
  valid: json['valid'] as bool?,
); }

final bool? valid;

Map<String, dynamic> toJson() { return {
  'valid': ?valid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'valid'}.contains(key)); } 
LogpushValidateOwnershipResponseResult copyWith({bool Function()? valid}) { return LogpushValidateOwnershipResponseResult(
  valid: valid != null ? valid() : this.valid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushValidateOwnershipResponseResult &&
          valid == other.valid; } 
@override int get hashCode { return valid.hashCode; } 
@override String toString() { return 'LogpushValidateOwnershipResponseResult(valid: $valid)'; } 
 }
