// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specify whether to redirect users to a Cloudflare-hosted block page or a customer-provided URI.
@immutable final class ZeroTrustGatewayBlockPageSettingsRequestMode {const ZeroTrustGatewayBlockPageSettingsRequestMode._(this.value);

factory ZeroTrustGatewayBlockPageSettingsRequestMode.fromJson(String json) {return switch (json) {
  '' => $empty,
  'customized_block_page' => customizedBlockPage,
  'redirect_uri' => redirectUri,
  _ => ZeroTrustGatewayBlockPageSettingsRequestMode._(json),
};}

static const ZeroTrustGatewayBlockPageSettingsRequestMode $empty = ZeroTrustGatewayBlockPageSettingsRequestMode._('');

static const ZeroTrustGatewayBlockPageSettingsRequestMode customizedBlockPage = ZeroTrustGatewayBlockPageSettingsRequestMode._('customized_block_page');

static const ZeroTrustGatewayBlockPageSettingsRequestMode redirectUri = ZeroTrustGatewayBlockPageSettingsRequestMode._('redirect_uri');

static const List<ZeroTrustGatewayBlockPageSettingsRequestMode> values = [$empty, customizedBlockPage, redirectUri];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is ZeroTrustGatewayBlockPageSettingsRequestMode && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'ZeroTrustGatewayBlockPageSettingsRequestMode($value)';}
}
/// Specify block page layout settings.
@immutable final class ZeroTrustGatewayBlockPageSettingsRequest {const ZeroTrustGatewayBlockPageSettingsRequest({this.backgroundColor, this.enabled = const Omittable.absent(), this.footerText, this.headerText, this.includeContext, this.logoPath, this.mailtoAddress, this.mailtoSubject, this.mode, this.name, this.suppressFooter, this.targetUri, });

factory ZeroTrustGatewayBlockPageSettingsRequest.fromJson(Map<String, dynamic> json) {return ZeroTrustGatewayBlockPageSettingsRequest(
  backgroundColor: json['background_color'] as String?,
  enabled: json.containsKey('enabled') ? Omittable(json['enabled'] as bool?) : const Omittable.absent(),
  footerText: json['footer_text'] as String?,
  headerText: json['header_text'] as String?,
  includeContext: json['include_context'] as bool?,
  logoPath: json['logo_path'] as String?,
  mailtoAddress: json['mailto_address'] as String?,
  mailtoSubject: json['mailto_subject'] as String?,
  mode: json['mode'] != null ? ZeroTrustGatewayBlockPageSettingsRequestMode.fromJson(json['mode'] as String) : null,
  name: json['name'] as String?,
  suppressFooter: json['suppress_footer'] as bool?,
  targetUri: json['target_uri'] != null ? Uri.parse(json['target_uri'] as String) : null,
);}

/// Specify the block page background color in `#rrggbb` format when the mode is customized_block_page.
final String? backgroundColor;

/// Specify whether to enable the custom block page.
final Omittable<bool?> enabled;

/// Specify the block page footer text when the mode is customized_block_page.
final String? footerText;

/// Specify the block page header text when the mode is customized_block_page.
final String? headerText;

/// Specify whether to append context to target_uri as query parameters. This applies only when the mode is redirect_uri.
final bool? includeContext;

/// Specify the full URL to the logo file when the mode is customized_block_page.
final String? logoPath;

/// Specify the admin email for users to contact when the mode is customized_block_page.
final String? mailtoAddress;

/// Specify the subject line for emails created from the block page when the mode is customized_block_page.
final String? mailtoSubject;

/// Specify whether to redirect users to a Cloudflare-hosted block page or a customer-provided URI.
final ZeroTrustGatewayBlockPageSettingsRequestMode? mode;

/// Specify the block page title when the mode is customized_block_page.
final String? name;

/// Specify whether to suppress detailed information at the bottom of the block page when the mode is customized_block_page.
final bool? suppressFooter;

/// Specify the URI to redirect users to when the mode is redirect_uri.
final Uri? targetUri;

/// The value with the schema default applied when absent.
ZeroTrustGatewayBlockPageSettingsRequestMode get modeOrDefault {return mode ?? ZeroTrustGatewayBlockPageSettingsRequestMode.fromJson('');}
Map<String, dynamic> toJson() {return {
  'background_color': ?backgroundColor,
  if (enabled.isPresent) 'enabled': enabled.value,
  'footer_text': ?footerText,
  'header_text': ?headerText,
  'include_context': ?includeContext,
  'logo_path': ?logoPath,
  'mailto_address': ?mailtoAddress,
  'mailto_subject': ?mailtoSubject,
  if (mode != null) 'mode': mode?.toJson(),
  'name': ?name,
  'suppress_footer': ?suppressFooter,
  if (targetUri != null) 'target_uri': targetUri?.toString(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'background_color', 'enabled', 'footer_text', 'header_text', 'include_context', 'logo_path', 'mailto_address', 'mailto_subject', 'mode', 'name', 'suppress_footer', 'target_uri'}.contains(key));}
ZeroTrustGatewayBlockPageSettingsRequest copyWith({String? Function()? backgroundColor, Omittable<bool?>? enabled, String? Function()? footerText, String? Function()? headerText, bool? Function()? includeContext, String? Function()? logoPath, String? Function()? mailtoAddress, String? Function()? mailtoSubject, ZeroTrustGatewayBlockPageSettingsRequestMode? Function()? mode, String? Function()? name, bool? Function()? suppressFooter, Uri? Function()? targetUri, }) {return ZeroTrustGatewayBlockPageSettingsRequest(
  backgroundColor: backgroundColor != null ? backgroundColor() : this.backgroundColor,
  enabled: enabled ?? this.enabled,
  footerText: footerText != null ? footerText() : this.footerText,
  headerText: headerText != null ? headerText() : this.headerText,
  includeContext: includeContext != null ? includeContext() : this.includeContext,
  logoPath: logoPath != null ? logoPath() : this.logoPath,
  mailtoAddress: mailtoAddress != null ? mailtoAddress() : this.mailtoAddress,
  mailtoSubject: mailtoSubject != null ? mailtoSubject() : this.mailtoSubject,
  mode: mode != null ? mode() : this.mode,
  name: name != null ? name() : this.name,
  suppressFooter: suppressFooter != null ? suppressFooter() : this.suppressFooter,
  targetUri: targetUri != null ? targetUri() : this.targetUri,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZeroTrustGatewayBlockPageSettingsRequest &&
          backgroundColor == other.backgroundColor &&
          enabled == other.enabled &&
          footerText == other.footerText &&
          headerText == other.headerText &&
          includeContext == other.includeContext &&
          logoPath == other.logoPath &&
          mailtoAddress == other.mailtoAddress &&
          mailtoSubject == other.mailtoSubject &&
          mode == other.mode &&
          name == other.name &&
          suppressFooter == other.suppressFooter &&
          targetUri == other.targetUri;}
@override int get hashCode {return Object.hash(backgroundColor, enabled, footerText, headerText, includeContext, logoPath, mailtoAddress, mailtoSubject, mode, name, suppressFooter, targetUri);}
@override String toString() {return 'ZeroTrustGatewayBlockPageSettingsRequest(backgroundColor: $backgroundColor, enabled: $enabled, footerText: $footerText, headerText: $headerText, includeContext: $includeContext, logoPath: $logoPath, mailtoAddress: $mailtoAddress, mailtoSubject: $mailtoSubject, mode: $mode, name: $name, suppressFooter: $suppressFooter, targetUri: $targetUri)';}
}
