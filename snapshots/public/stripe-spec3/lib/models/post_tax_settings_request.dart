// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_settings_request_defaults.dart';import 'post_tax_settings_request_head_office.dart';@immutable final class PostTaxSettingsRequest {const PostTaxSettingsRequest({this.defaults, this.expand, this.headOffice, });

factory PostTaxSettingsRequest.fromJson(Map<String, dynamic> json) { return PostTaxSettingsRequest(
  defaults: json['defaults'] != null ? PostTaxSettingsRequestDefaults.fromJson(json['defaults'] as Map<String, dynamic>) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  headOffice: json['head_office'] != null ? PostTaxSettingsRequestHeadOffice.fromJson(json['head_office'] as Map<String, dynamic>) : null,
); }

/// Default configuration to be used on Stripe Tax calculations.
final PostTaxSettingsRequestDefaults? defaults;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The place where your business is located.
final PostTaxSettingsRequestHeadOffice? headOffice;

Map<String, dynamic> toJson() { return {
  if (defaults != null) 'defaults': defaults?.toJson(),
  'expand': ?expand,
  if (headOffice != null) 'head_office': headOffice?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'defaults', 'expand', 'head_office'}.contains(key)); } 
PostTaxSettingsRequest copyWith({PostTaxSettingsRequestDefaults Function()? defaults, List<String> Function()? expand, PostTaxSettingsRequestHeadOffice Function()? headOffice, }) { return PostTaxSettingsRequest(
  defaults: defaults != null ? defaults() : this.defaults,
  expand: expand != null ? expand() : this.expand,
  headOffice: headOffice != null ? headOffice() : this.headOffice,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxSettingsRequest &&
          defaults == other.defaults &&
          listEquals(expand, other.expand) &&
          headOffice == other.headOffice; } 
@override int get hashCode { return Object.hash(defaults, Object.hashAll(expand ?? const []), headOffice); } 
@override String toString() { return 'PostTaxSettingsRequest(defaults: $defaults, expand: $expand, headOffice: $headOffice)'; } 
 }
