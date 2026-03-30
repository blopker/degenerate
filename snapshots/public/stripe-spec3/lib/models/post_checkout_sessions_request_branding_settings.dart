// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_checkout_sessions_request_branding_settings_background_color.dart';import 'post_checkout_sessions_request_branding_settings_button_color.dart';import 'post_checkout_sessions_request_branding_settings_icon.dart';import 'post_checkout_sessions_request_branding_settings_logo.dart';final class PostCheckoutSessionsRequestBrandingSettingsBorderStyle {const PostCheckoutSessionsRequestBrandingSettingsBorderStyle._(this.value);

factory PostCheckoutSessionsRequestBrandingSettingsBorderStyle.fromJson(String json) { return switch (json) {
  '' => $empty,
  'pill' => pill,
  'rectangular' => rectangular,
  'rounded' => rounded,
  _ => PostCheckoutSessionsRequestBrandingSettingsBorderStyle._(json),
}; }

static const PostCheckoutSessionsRequestBrandingSettingsBorderStyle $empty = PostCheckoutSessionsRequestBrandingSettingsBorderStyle._('');

static const PostCheckoutSessionsRequestBrandingSettingsBorderStyle pill = PostCheckoutSessionsRequestBrandingSettingsBorderStyle._('pill');

static const PostCheckoutSessionsRequestBrandingSettingsBorderStyle rectangular = PostCheckoutSessionsRequestBrandingSettingsBorderStyle._('rectangular');

static const PostCheckoutSessionsRequestBrandingSettingsBorderStyle rounded = PostCheckoutSessionsRequestBrandingSettingsBorderStyle._('rounded');

static const List<PostCheckoutSessionsRequestBrandingSettingsBorderStyle> values = [$empty, pill, rectangular, rounded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestBrandingSettingsBorderStyle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestBrandingSettingsBorderStyle($value)'; } 
 }
final class PostCheckoutSessionsRequestBrandingSettingsFontFamily {const PostCheckoutSessionsRequestBrandingSettingsFontFamily._(this.value);

factory PostCheckoutSessionsRequestBrandingSettingsFontFamily.fromJson(String json) { return switch (json) {
  '' => $empty,
  'be_vietnam_pro' => beVietnamPro,
  'bitter' => bitter,
  'chakra_petch' => chakraPetch,
  'default' => $default,
  'hahmlet' => hahmlet,
  'inconsolata' => inconsolata,
  'inter' => inter,
  'lato' => lato,
  'lora' => lora,
  'm_plus_1_code' => mPlus1Code,
  'montserrat' => montserrat,
  'noto_sans' => notoSans,
  'noto_sans_jp' => notoSansJp,
  'noto_serif' => notoSerif,
  'nunito' => nunito,
  'open_sans' => openSans,
  'pridi' => pridi,
  'pt_sans' => ptSans,
  'pt_serif' => ptSerif,
  'raleway' => raleway,
  'roboto' => roboto,
  'roboto_slab' => robotoSlab,
  'source_sans_pro' => sourceSansPro,
  'titillium_web' => titilliumWeb,
  'ubuntu_mono' => ubuntuMono,
  'zen_maru_gothic' => zenMaruGothic,
  _ => PostCheckoutSessionsRequestBrandingSettingsFontFamily._(json),
}; }

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily $empty = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily beVietnamPro = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('be_vietnam_pro');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily bitter = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('bitter');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily chakraPetch = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('chakra_petch');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily $default = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('default');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily hahmlet = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('hahmlet');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily inconsolata = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('inconsolata');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily inter = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('inter');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily lato = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('lato');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily lora = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('lora');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily mPlus1Code = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('m_plus_1_code');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily montserrat = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('montserrat');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily notoSans = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('noto_sans');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily notoSansJp = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('noto_sans_jp');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily notoSerif = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('noto_serif');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily nunito = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('nunito');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily openSans = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('open_sans');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily pridi = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('pridi');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily ptSans = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('pt_sans');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily ptSerif = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('pt_serif');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily raleway = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('raleway');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily roboto = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('roboto');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily robotoSlab = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('roboto_slab');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily sourceSansPro = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('source_sans_pro');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily titilliumWeb = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('titillium_web');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily ubuntuMono = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('ubuntu_mono');

static const PostCheckoutSessionsRequestBrandingSettingsFontFamily zenMaruGothic = PostCheckoutSessionsRequestBrandingSettingsFontFamily._('zen_maru_gothic');

static const List<PostCheckoutSessionsRequestBrandingSettingsFontFamily> values = [$empty, beVietnamPro, bitter, chakraPetch, $default, hahmlet, inconsolata, inter, lato, lora, mPlus1Code, montserrat, notoSans, notoSansJp, notoSerif, nunito, openSans, pridi, ptSans, ptSerif, raleway, roboto, robotoSlab, sourceSansPro, titilliumWeb, ubuntuMono, zenMaruGothic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestBrandingSettingsFontFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestBrandingSettingsFontFamily($value)'; } 
 }
/// The branding settings for the Checkout Session. This parameter is not allowed if ui_mode is `custom`.
final class PostCheckoutSessionsRequestBrandingSettings {const PostCheckoutSessionsRequestBrandingSettings({this.backgroundColor, this.borderStyle, this.buttonColor, this.displayName, this.fontFamily, this.icon, this.logo, });

factory PostCheckoutSessionsRequestBrandingSettings.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestBrandingSettings(
  backgroundColor: json['background_color'] != null ? OneOf2.parse(json['background_color'], fromA: (v) => v as String, fromB: (v) => PostCheckoutSessionsRequestBrandingSettingsBackgroundColorVariant2.fromJson(v as String),) : null,
  borderStyle: json['border_style'] != null ? PostCheckoutSessionsRequestBrandingSettingsBorderStyle.fromJson(json['border_style'] as String) : null,
  buttonColor: json['button_color'] != null ? OneOf2.parse(json['button_color'], fromA: (v) => v as String, fromB: (v) => PostCheckoutSessionsRequestBrandingSettingsButtonColorVariant2.fromJson(v as String),) : null,
  displayName: json['display_name'] as String?,
  fontFamily: json['font_family'] != null ? PostCheckoutSessionsRequestBrandingSettingsFontFamily.fromJson(json['font_family'] as String) : null,
  icon: json['icon'] != null ? PostCheckoutSessionsRequestBrandingSettingsIcon.fromJson(json['icon'] as Map<String, dynamic>) : null,
  logo: json['logo'] != null ? PostCheckoutSessionsRequestBrandingSettingsLogo.fromJson(json['logo'] as Map<String, dynamic>) : null,
); }

final PostCheckoutSessionsRequestBrandingSettingsBackgroundColor? backgroundColor;

final PostCheckoutSessionsRequestBrandingSettingsBorderStyle? borderStyle;

final PostCheckoutSessionsRequestBrandingSettingsButtonColor? buttonColor;

final String? displayName;

final PostCheckoutSessionsRequestBrandingSettingsFontFamily? fontFamily;

final PostCheckoutSessionsRequestBrandingSettingsIcon? icon;

final PostCheckoutSessionsRequestBrandingSettingsLogo? logo;

Map<String, dynamic> toJson() { return {
  if (backgroundColor != null) 'background_color': backgroundColor?.toJson(),
  if (borderStyle != null) 'border_style': borderStyle?.toJson(),
  if (buttonColor != null) 'button_color': buttonColor?.toJson(),
  'display_name': ?displayName,
  if (fontFamily != null) 'font_family': fontFamily?.toJson(),
  if (icon != null) 'icon': icon?.toJson(),
  if (logo != null) 'logo': logo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'background_color', 'border_style', 'button_color', 'display_name', 'font_family', 'icon', 'logo'}.contains(key)); } 
PostCheckoutSessionsRequestBrandingSettings copyWith({PostCheckoutSessionsRequestBrandingSettingsBackgroundColor Function()? backgroundColor, PostCheckoutSessionsRequestBrandingSettingsBorderStyle Function()? borderStyle, PostCheckoutSessionsRequestBrandingSettingsButtonColor Function()? buttonColor, String Function()? displayName, PostCheckoutSessionsRequestBrandingSettingsFontFamily Function()? fontFamily, PostCheckoutSessionsRequestBrandingSettingsIcon Function()? icon, PostCheckoutSessionsRequestBrandingSettingsLogo Function()? logo, }) { return PostCheckoutSessionsRequestBrandingSettings(
  backgroundColor: backgroundColor != null ? backgroundColor() : this.backgroundColor,
  borderStyle: borderStyle != null ? borderStyle() : this.borderStyle,
  buttonColor: buttonColor != null ? buttonColor() : this.buttonColor,
  displayName: displayName != null ? displayName() : this.displayName,
  fontFamily: fontFamily != null ? fontFamily() : this.fontFamily,
  icon: icon != null ? icon() : this.icon,
  logo: logo != null ? logo() : this.logo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestBrandingSettings &&
          backgroundColor == other.backgroundColor &&
          borderStyle == other.borderStyle &&
          buttonColor == other.buttonColor &&
          displayName == other.displayName &&
          fontFamily == other.fontFamily &&
          icon == other.icon &&
          logo == other.logo; } 
@override int get hashCode { return Object.hash(backgroundColor, borderStyle, buttonColor, displayName, fontFamily, icon, logo); } 
@override String toString() { return 'PostCheckoutSessionsRequestBrandingSettings(backgroundColor: $backgroundColor, borderStyle: $borderStyle, buttonColor: $buttonColor, displayName: $displayName, fontFamily: $fontFamily, icon: $icon, logo: $logo)'; } 
 }
