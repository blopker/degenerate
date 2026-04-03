// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_action_variant1.dart';/// The action to perform when the threshold of matched traffic within the configured period is exceeded.
final class FirewallAction {const FirewallAction({this.firewallActionVariant1});

factory FirewallAction.fromJson(Map<String, dynamic> json) { return FirewallAction(
  firewallActionVariant1: FirewallActionVariant1.canParse(json) ? FirewallActionVariant1.fromJson(json) : null,
); }

final FirewallActionVariant1? firewallActionVariant1;

/// At least one variant must be present.
bool get isValid { return firewallActionVariant1 != null; } 
Map<String, dynamic> toJson() { return {
  ...?firewallActionVariant1?.toJson(),
}; } 
 }
