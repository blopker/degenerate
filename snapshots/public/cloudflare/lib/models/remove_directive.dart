// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_cache_control_cloudflare_only.dart';import 'rulesets_set_cache_control_operation.dart';/// Remove the directive.
@immutable final class RemoveDirective {const RemoveDirective({required this.operation, this.cloudflareOnly, });

factory RemoveDirective.fromJson(Map<String, dynamic> json) { return RemoveDirective(
  cloudflareOnly: json['cloudflare_only'] != null ? RulesetsSetCacheControlCloudflareOnly.fromJson(json['cloudflare_only'] as bool) : null,
  operation: RulesetsSetCacheControlOperation.fromJson(json['operation'] as String),
); }

/// Whether the directive should only be applied to the Cloudflare CDN cache.
final RulesetsSetCacheControlCloudflareOnly? cloudflareOnly;

final RulesetsSetCacheControlOperation operation;

Map<String, dynamic> toJson() { return {
  if (cloudflareOnly != null) 'cloudflare_only': cloudflareOnly?.toJson(),
  'operation': operation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('operation'); } 
RemoveDirective copyWith({RulesetsSetCacheControlCloudflareOnly Function()? cloudflareOnly, RulesetsSetCacheControlOperation? operation, }) { return RemoveDirective(
  cloudflareOnly: cloudflareOnly != null ? cloudflareOnly() : this.cloudflareOnly,
  operation: operation ?? this.operation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RemoveDirective &&
          cloudflareOnly == other.cloudflareOnly &&
          operation == other.operation; } 
@override int get hashCode { return Object.hash(cloudflareOnly, operation); } 
@override String toString() { return 'RemoveDirective(cloudflareOnly: $cloudflareOnly, operation: $operation)'; } 
 }
