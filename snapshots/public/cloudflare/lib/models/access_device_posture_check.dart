// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessDevicePostureCheck {const AccessDevicePostureCheck({this.exists, this.path, });

factory AccessDevicePostureCheck.fromJson(Map<String, dynamic> json) { return AccessDevicePostureCheck(
  exists: json['exists'] as bool?,
  path: json['path'] as String?,
); }

final bool? exists;

final String? path;

Map<String, dynamic> toJson() { return {
  'exists': ?exists,
  'path': ?path,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'exists', 'path'}.contains(key)); } 
AccessDevicePostureCheck copyWith({bool Function()? exists, String Function()? path, }) { return AccessDevicePostureCheck(
  exists: exists != null ? exists() : this.exists,
  path: path != null ? path() : this.path,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessDevicePostureCheck &&
          exists == other.exists &&
          path == other.path; } 
@override int get hashCode { return Object.hash(exists, path); } 
@override String toString() { return 'AccessDevicePostureCheck(exists: $exists, path: $path)'; } 
 }
