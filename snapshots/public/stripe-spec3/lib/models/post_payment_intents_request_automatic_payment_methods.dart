// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects {const PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects._(this.value);

factory PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects.fromJson(String json) { return switch (json) {
  'always' => always,
  'never' => never,
  _ => PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects._(json),
}; }

static const PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects always = PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects._('always');

static const PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects never = PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects._('never');

static const List<PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects> values = [always, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects($value)'; } 
 }
/// When you enable this parameter, this PaymentIntent accepts payment methods that you enable in the Dashboard and that are compatible with this PaymentIntent's other parameters.
final class PostPaymentIntentsRequestAutomaticPaymentMethods {const PostPaymentIntentsRequestAutomaticPaymentMethods({this.allowRedirects, required this.enabled, });

factory PostPaymentIntentsRequestAutomaticPaymentMethods.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestAutomaticPaymentMethods(
  allowRedirects: json['allow_redirects'] != null ? PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects.fromJson(json['allow_redirects'] as String) : null,
  enabled: json['enabled'] as bool,
); }

final PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects? allowRedirects;

final bool enabled;

Map<String, dynamic> toJson() { return {
  if (allowRedirects != null) 'allow_redirects': allowRedirects?.toJson(),
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostPaymentIntentsRequestAutomaticPaymentMethods copyWith({PostPaymentIntentsRequestAutomaticPaymentMethodsAllowRedirects Function()? allowRedirects, bool? enabled, }) { return PostPaymentIntentsRequestAutomaticPaymentMethods(
  allowRedirects: allowRedirects != null ? allowRedirects() : this.allowRedirects,
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestAutomaticPaymentMethods &&
          allowRedirects == other.allowRedirects &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(allowRedirects, enabled); } 
@override String toString() { return 'PostPaymentIntentsRequestAutomaticPaymentMethods(allowRedirects: $allowRedirects, enabled: $enabled)'; } 
 }
