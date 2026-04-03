// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestSettingsBranding {const PostAccountsRequestSettingsBranding({this.icon, this.logo, this.primaryColor, this.secondaryColor, });

factory PostAccountsRequestSettingsBranding.fromJson(Map<String, dynamic> json) { return PostAccountsRequestSettingsBranding(
  icon: json['icon'] as String?,
  logo: json['logo'] as String?,
  primaryColor: json['primary_color'] as String?,
  secondaryColor: json['secondary_color'] as String?,
); }

final String? icon;

final String? logo;

final String? primaryColor;

final String? secondaryColor;

Map<String, dynamic> toJson() { return {
  'icon': ?icon,
  'logo': ?logo,
  'primary_color': ?primaryColor,
  'secondary_color': ?secondaryColor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'icon', 'logo', 'primary_color', 'secondary_color'}.contains(key)); } 
PostAccountsRequestSettingsBranding copyWith({String Function()? icon, String Function()? logo, String Function()? primaryColor, String Function()? secondaryColor, }) { return PostAccountsRequestSettingsBranding(
  icon: icon != null ? icon() : this.icon,
  logo: logo != null ? logo() : this.logo,
  primaryColor: primaryColor != null ? primaryColor() : this.primaryColor,
  secondaryColor: secondaryColor != null ? secondaryColor() : this.secondaryColor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestSettingsBranding &&
          icon == other.icon &&
          logo == other.logo &&
          primaryColor == other.primaryColor &&
          secondaryColor == other.secondaryColor; } 
@override int get hashCode { return Object.hash(icon, logo, primaryColor, secondaryColor); } 
@override String toString() { return 'PostAccountsRequestSettingsBranding(icon: $icon, logo: $logo, primaryColor: $primaryColor, secondaryColor: $secondaryColor)'; } 
 }
