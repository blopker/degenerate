// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The WAF rule action to apply.
extension type FirewallWafRewriteAction(dynamic value) {
factory FirewallWafRewriteAction.fromJson(dynamic json) => FirewallWafRewriteAction(json);

dynamic toJson() => value;

}
/// Specifies that, when a WAF rule matches, its configured action will be replaced by the action configured in this object.
@immutable final class FirewallRewriteAction {const FirewallRewriteAction({this.block = const Omittable.absent(), this.challenge = const Omittable.absent(), this.$default = const Omittable.absent(), this.disable = const Omittable.absent(), this.simulate = const Omittable.absent(), });

factory FirewallRewriteAction.fromJson(Map<String, dynamic> json) { return FirewallRewriteAction(
  block: json.containsKey('block') ? Omittable(json['block'] != null ? FirewallWafRewriteAction.fromJson(json['block'] as dynamic) : null) : const Omittable.absent(),
  challenge: json.containsKey('challenge') ? Omittable(json['challenge'] != null ? FirewallWafRewriteAction.fromJson(json['challenge'] as dynamic) : null) : const Omittable.absent(),
  $default: json.containsKey('default') ? Omittable(json['default'] != null ? FirewallWafRewriteAction.fromJson(json['default'] as dynamic) : null) : const Omittable.absent(),
  disable: json.containsKey('disable') ? Omittable(json['disable'] != null ? FirewallWafRewriteAction.fromJson(json['disable'] as dynamic) : null) : const Omittable.absent(),
  simulate: json.containsKey('simulate') ? Omittable(json['simulate'] != null ? FirewallWafRewriteAction.fromJson(json['simulate'] as dynamic) : null) : const Omittable.absent(),
); }

final Omittable<FirewallWafRewriteAction?> block;

final Omittable<FirewallWafRewriteAction?> challenge;

final Omittable<FirewallWafRewriteAction?> $default;

final Omittable<FirewallWafRewriteAction?> disable;

final Omittable<FirewallWafRewriteAction?> simulate;

Map<String, dynamic> toJson() { return {
  if (block.isPresent) 'block': block.value?.toJson(),
  if (challenge.isPresent) 'challenge': challenge.value?.toJson(),
  if ($default.isPresent) 'default': $default.value?.toJson(),
  if (disable.isPresent) 'disable': disable.value?.toJson(),
  if (simulate.isPresent) 'simulate': simulate.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'block', 'challenge', 'default', 'disable', 'simulate'}.contains(key)); } 
FirewallRewriteAction copyWith({Omittable<FirewallWafRewriteAction?>? block, Omittable<FirewallWafRewriteAction?>? challenge, Omittable<FirewallWafRewriteAction?>? $default, Omittable<FirewallWafRewriteAction?>? disable, Omittable<FirewallWafRewriteAction?>? simulate, }) { return FirewallRewriteAction(
  block: block ?? this.block,
  challenge: challenge ?? this.challenge,
  $default: $default ?? this.$default,
  disable: disable ?? this.disable,
  simulate: simulate ?? this.simulate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallRewriteAction &&
          block == other.block &&
          challenge == other.challenge &&
          $default == other.$default &&
          disable == other.disable &&
          simulate == other.simulate; } 
@override int get hashCode { return Object.hash(block, challenge, $default, disable, simulate); } 
@override String toString() { return 'FirewallRewriteAction(block: $block, challenge: $challenge, \$default: ${$default}, disable: $disable, simulate: $simulate)'; } 
 }
