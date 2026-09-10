// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZeroTrustGatewayAccountLogOptions {const ZeroTrustGatewayAccountLogOptions({this.logAll, this.logBlocks, });

factory ZeroTrustGatewayAccountLogOptions.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayAccountLogOptions(
  logAll: json['log_all'] as bool?,
  logBlocks: json['log_blocks'] as bool?,
); }

/// Specify whether to log all requests to this service.
final bool? logAll;

/// Specify whether to log only blocking requests to this service.
final bool? logBlocks;

/// The value with the schema default applied when absent.
bool get logAllOrDefault { return logAll ?? false; } 
/// The value with the schema default applied when absent.
bool get logBlocksOrDefault { return logBlocks ?? false; } 
Map<String, dynamic> toJson() { return {
  'log_all': ?logAll,
  'log_blocks': ?logBlocks,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'log_all', 'log_blocks'}.contains(key)); } 
ZeroTrustGatewayAccountLogOptions copyWith({bool? Function()? logAll, bool? Function()? logBlocks, }) { return ZeroTrustGatewayAccountLogOptions(
  logAll: logAll != null ? logAll() : this.logAll,
  logBlocks: logBlocks != null ? logBlocks() : this.logBlocks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayAccountLogOptions &&
          logAll == other.logAll &&
          logBlocks == other.logBlocks; } 
@override int get hashCode { return Object.hash(logAll, logBlocks); } 
@override String toString() { return 'ZeroTrustGatewayAccountLogOptions(logAll: $logAll, logBlocks: $logBlocks)'; } 
 }
