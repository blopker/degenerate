// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_settings.dart';@immutable final class AccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest {const AccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest({required this.settings});

factory AccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest.fromJson(Map<String, dynamic> json) { return AccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest(
  settings: (json['settings'] as List<dynamic>).map((e) => AccessSettings.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessSettings> settings;

Map<String, dynamic> toJson() { return {
  'settings': settings.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('settings'); } 
AccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest copyWith({List<AccessSettings>? settings}) { return AccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest(
  settings: settings ?? this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest &&
          listEquals(settings, other.settings); } 
@override int get hashCode { return Object.hashAll(settings).hashCode; } 
@override String toString() { return 'AccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest(settings: $settings)'; } 
 }
