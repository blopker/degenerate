// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_log_custom_field_cookie_fields2.dart';import 'rulesets_log_custom_field_raw_response_fields2.dart';import 'rulesets_log_custom_field_request_fields2.dart';import 'rulesets_log_custom_field_response_fields2.dart';import 'rulesets_log_custom_field_transformed_request_fields2.dart';@immutable final class RulesetsLogCustomFieldRuleActionParameters {const RulesetsLogCustomFieldRuleActionParameters({this.cookieFields, this.rawResponseFields, this.requestFields, this.responseFields, this.transformedRequestFields, });

factory RulesetsLogCustomFieldRuleActionParameters.fromJson(Map<String, dynamic> json) { return RulesetsLogCustomFieldRuleActionParameters(
  cookieFields: (json['cookie_fields'] as List<dynamic>?)?.map((e) => RulesetsLogCustomFieldCookieFields2.fromJson(e as Map<String, dynamic>)).toList(),
  rawResponseFields: (json['raw_response_fields'] as List<dynamic>?)?.map((e) => RulesetsLogCustomFieldRawResponseFields2.fromJson(e as Map<String, dynamic>)).toList(),
  requestFields: (json['request_fields'] as List<dynamic>?)?.map((e) => RulesetsLogCustomFieldRequestFields2.fromJson(e as Map<String, dynamic>)).toList(),
  responseFields: (json['response_fields'] as List<dynamic>?)?.map((e) => RulesetsLogCustomFieldResponseFields2.fromJson(e as Map<String, dynamic>)).toList(),
  transformedRequestFields: (json['transformed_request_fields'] as List<dynamic>?)?.map((e) => RulesetsLogCustomFieldTransformedRequestFields2.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The cookie fields to log.
final List<RulesetsLogCustomFieldCookieFields2>? cookieFields;

/// The raw response fields to log.
final List<RulesetsLogCustomFieldRawResponseFields2>? rawResponseFields;

/// The raw request fields to log.
final List<RulesetsLogCustomFieldRequestFields2>? requestFields;

/// The transformed response fields to log.
final List<RulesetsLogCustomFieldResponseFields2>? responseFields;

final List<RulesetsLogCustomFieldTransformedRequestFields2>? transformedRequestFields;

Map<String, dynamic> toJson() { return {
  if (cookieFields != null) 'cookie_fields': cookieFields?.map((e) => e.toJson()).toList(),
  if (rawResponseFields != null) 'raw_response_fields': rawResponseFields?.map((e) => e.toJson()).toList(),
  if (requestFields != null) 'request_fields': requestFields?.map((e) => e.toJson()).toList(),
  if (responseFields != null) 'response_fields': responseFields?.map((e) => e.toJson()).toList(),
  if (transformedRequestFields != null) 'transformed_request_fields': transformedRequestFields?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cookie_fields', 'raw_response_fields', 'request_fields', 'response_fields', 'transformed_request_fields'}.contains(key)); } 
RulesetsLogCustomFieldRuleActionParameters copyWith({List<RulesetsLogCustomFieldCookieFields2>? Function()? cookieFields, List<RulesetsLogCustomFieldRawResponseFields2>? Function()? rawResponseFields, List<RulesetsLogCustomFieldRequestFields2>? Function()? requestFields, List<RulesetsLogCustomFieldResponseFields2>? Function()? responseFields, List<RulesetsLogCustomFieldTransformedRequestFields2>? Function()? transformedRequestFields, }) { return RulesetsLogCustomFieldRuleActionParameters(
  cookieFields: cookieFields != null ? cookieFields() : this.cookieFields,
  rawResponseFields: rawResponseFields != null ? rawResponseFields() : this.rawResponseFields,
  requestFields: requestFields != null ? requestFields() : this.requestFields,
  responseFields: responseFields != null ? responseFields() : this.responseFields,
  transformedRequestFields: transformedRequestFields != null ? transformedRequestFields() : this.transformedRequestFields,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsLogCustomFieldRuleActionParameters &&
          listEquals(cookieFields, other.cookieFields) &&
          listEquals(rawResponseFields, other.rawResponseFields) &&
          listEquals(requestFields, other.requestFields) &&
          listEquals(responseFields, other.responseFields) &&
          listEquals(transformedRequestFields, other.transformedRequestFields); } 
@override int get hashCode { return Object.hash(Object.hashAll(cookieFields ?? const []), Object.hashAll(rawResponseFields ?? const []), Object.hashAll(requestFields ?? const []), Object.hashAll(responseFields ?? const []), Object.hashAll(transformedRequestFields ?? const [])); } 
@override String toString() { return 'RulesetsLogCustomFieldRuleActionParameters(cookieFields: $cookieFields, rawResponseFields: $rawResponseFields, requestFields: $requestFields, responseFields: $responseFields, transformedRequestFields: $transformedRequestFields)'; } 
 }
