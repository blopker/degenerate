// GENERATED CODE - DO NOT MODIFY BY HAND

/// Push protection setting to set for the pattern.
final class SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting {const SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting._(this.value);

factory SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting.fromJson(String json) { return switch (json) {
  'not-set' => notSet,
  'disabled' => disabled,
  'enabled' => enabled,
  _ => SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting._(json),
}; }

static const SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting notSet = SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting._('not-set');

static const SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting disabled = SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting._('disabled');

static const SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting enabled = SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting._('enabled');

static const List<SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting> values = [notSet, disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting($value)'; } 
 }
final class SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings {const SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings({this.tokenType, this.pushProtectionSetting, });

factory SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings.fromJson(Map<String, dynamic> json) { return SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings(
  tokenType: json['token_type'] as String?,
  pushProtectionSetting: json['push_protection_setting'] != null ? SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting.fromJson(json['push_protection_setting'] as String) : null,
); }

/// The ID of the pattern to configure.
final String? tokenType;

/// Push protection setting to set for the pattern.
final SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting? pushProtectionSetting;

Map<String, dynamic> toJson() { return {
  'token_type': ?tokenType,
  if (pushProtectionSetting != null) 'push_protection_setting': pushProtectionSetting?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'token_type', 'push_protection_setting'}.contains(key)); } 
SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings copyWith({String Function()? tokenType, SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettingsPushProtectionSetting Function()? pushProtectionSetting, }) { return SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings(
  tokenType: tokenType != null ? tokenType() : this.tokenType,
  pushProtectionSetting: pushProtectionSetting != null ? pushProtectionSetting() : this.pushProtectionSetting,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings &&
          tokenType == other.tokenType &&
          pushProtectionSetting == other.pushProtectionSetting; } 
@override int get hashCode { return Object.hash(tokenType, pushProtectionSetting); } 
@override String toString() { return 'SecretScanningUpdateOrgPatternConfigsRequestProviderPatternSettings(tokenType: $tokenType, pushProtectionSetting: $pushProtectionSetting)'; } 
 }
