// GENERATED CODE - DO NOT MODIFY BY HAND

import 'email_email_settings_properties.dart';final class EmailEmailSettingsResponseSingle {const EmailEmailSettingsResponseSingle({this.result});

factory EmailEmailSettingsResponseSingle.fromJson(Map<String, dynamic> json) { return EmailEmailSettingsResponseSingle(
  result: json['result'] != null ? EmailEmailSettingsProperties.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final EmailEmailSettingsProperties? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
EmailEmailSettingsResponseSingle copyWith({EmailEmailSettingsProperties Function()? result}) { return EmailEmailSettingsResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailEmailSettingsResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'EmailEmailSettingsResponseSingle(result: $result)'; } 
 }
