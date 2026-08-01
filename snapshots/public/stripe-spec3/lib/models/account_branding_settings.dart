// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_branding_settings_icon.dart';import 'account_branding_settings_logo.dart';import 'file.dart';/// 
@immutable final class AccountBrandingSettings {const AccountBrandingSettings({this.icon = const Omittable.absent(), this.logo = const Omittable.absent(), this.primaryColor = const Omittable.absent(), this.secondaryColor = const Omittable.absent(), });

factory AccountBrandingSettings.fromJson(Map<String, dynamic> json) { return AccountBrandingSettings(
  icon: json.containsKey('icon') ? Omittable(json['icon'] != null ? OneOf2.parse(json['icon'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  logo: json.containsKey('logo') ? Omittable(json['logo'] != null ? OneOf2.parse(json['logo'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  primaryColor: json.containsKey('primary_color') ? Omittable(json['primary_color'] as String?) : const Omittable.absent(),
  secondaryColor: json.containsKey('secondary_color') ? Omittable(json['secondary_color'] as String?) : const Omittable.absent(),
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
final Omittable<AccountBrandingSettingsIcon?> icon;

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
final Omittable<AccountBrandingSettingsLogo?> logo;

/// A CSS hex color value representing the primary branding color for this account
final Omittable<String?> primaryColor;

/// A CSS hex color value representing the secondary branding color for this account
final Omittable<String?> secondaryColor;

Map<String, dynamic> toJson() { return {
  if (icon.isPresent) 'icon': icon.value?.toJson(),
  if (logo.isPresent) 'logo': logo.value?.toJson(),
  if (primaryColor.isPresent) 'primary_color': primaryColor.value,
  if (secondaryColor.isPresent) 'secondary_color': secondaryColor.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'icon', 'logo', 'primary_color', 'secondary_color'}.contains(key)); } 
AccountBrandingSettings copyWith({Omittable<AccountBrandingSettingsIcon?>? icon, Omittable<AccountBrandingSettingsLogo?>? logo, Omittable<String?>? primaryColor, Omittable<String?>? secondaryColor, }) { return AccountBrandingSettings(
  icon: icon ?? this.icon,
  logo: logo ?? this.logo,
  primaryColor: primaryColor ?? this.primaryColor,
  secondaryColor: secondaryColor ?? this.secondaryColor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountBrandingSettings &&
          icon == other.icon &&
          logo == other.logo &&
          primaryColor == other.primaryColor &&
          secondaryColor == other.secondaryColor; } 
@override int get hashCode { return Object.hash(icon, logo, primaryColor, secondaryColor); } 
@override String toString() { return 'AccountBrandingSettings(icon: $icon, logo: $logo, primaryColor: $primaryColor, secondaryColor: $secondaryColor)'; } 
 }
