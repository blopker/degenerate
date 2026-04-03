// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The log retention flag for Logpull API.
extension type const LogcontrolFlag(bool value) {
factory LogcontrolFlag.fromJson(bool json) => LogcontrolFlag(json);

bool toJson() => value;

}
@immutable final class LogcontrolRetentionFlag {const LogcontrolRetentionFlag({this.flag});

factory LogcontrolRetentionFlag.fromJson(Map<String, dynamic> json) { return LogcontrolRetentionFlag(
  flag: json['flag'] != null ? LogcontrolFlag.fromJson(json['flag'] as bool) : null,
); }

/// The log retention flag for Logpull API.
final LogcontrolFlag? flag;

Map<String, dynamic> toJson() { return {
  if (flag != null) 'flag': flag?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'flag'}.contains(key)); } 
LogcontrolRetentionFlag copyWith({LogcontrolFlag Function()? flag}) { return LogcontrolRetentionFlag(
  flag: flag != null ? flag() : this.flag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogcontrolRetentionFlag &&
          flag == other.flag; } 
@override int get hashCode { return flag.hashCode; } 
@override String toString() { return 'LogcontrolRetentionFlag(flag: $flag)'; } 
 }
