// GENERATED CODE - DO NOT MODIFY BY HAND

import 'email_email_setting_name.dart';final class EmailEmailSettingDnsRequestBody {const EmailEmailSettingDnsRequestBody({this.name});

factory EmailEmailSettingDnsRequestBody.fromJson(Map<String, dynamic> json) { return EmailEmailSettingDnsRequestBody(
  name: json['name'] != null ? EmailEmailSettingName.fromJson(json['name'] as String) : null,
); }

final EmailEmailSettingName? name;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name'}.contains(key)); } 
EmailEmailSettingDnsRequestBody copyWith({EmailEmailSettingName Function()? name}) { return EmailEmailSettingDnsRequestBody(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailEmailSettingDnsRequestBody &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'EmailEmailSettingDnsRequestBody(name: $name)'; } 
 }
