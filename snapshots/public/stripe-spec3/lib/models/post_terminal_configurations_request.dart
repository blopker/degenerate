// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cellular.dart';import 'offline.dart';import 'post_terminal_configurations_request_bbpos_wisepad3.dart';import 'post_terminal_configurations_request_bbpos_wisepos_e.dart';import 'post_terminal_configurations_request_cellular.dart';import 'post_terminal_configurations_request_offline.dart';import 'post_terminal_configurations_request_reboot_window.dart';import 'post_terminal_configurations_request_stripe_s700.dart';import 'post_terminal_configurations_request_stripe_s710.dart';import 'post_terminal_configurations_request_tipping.dart';import 'post_terminal_configurations_request_verifone_p400.dart';import 'post_terminal_configurations_request_wifi.dart';import 'tipping.dart';import 'wifi.dart';final class PostTerminalConfigurationsRequest {const PostTerminalConfigurationsRequest({this.bbposWisepad3, this.bbposWiseposE, this.cellular, this.expand, this.name, this.offline, this.rebootWindow, this.stripeS700, this.stripeS710, this.tipping, this.verifoneP400, this.wifi, });

factory PostTerminalConfigurationsRequest.fromJson(Map<String, dynamic> json) { return PostTerminalConfigurationsRequest(
  bbposWisepad3: json['bbpos_wisepad3'] != null ? PostTerminalConfigurationsRequestBbposWisepad3.fromJson(json['bbpos_wisepad3'] as Map<String, dynamic>) : null,
  bbposWiseposE: json['bbpos_wisepos_e'] != null ? PostTerminalConfigurationsRequestBbposWiseposE.fromJson(json['bbpos_wisepos_e'] as Map<String, dynamic>) : null,
  cellular: json['cellular'] != null ? OneOf2.parse(json['cellular'], fromA: (v) => Cellular.fromJson(v as Map<String, dynamic>), fromB: (v) => PostTerminalConfigurationsRequestCellularVariant2.fromJson(v as String),) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  name: json['name'] as String?,
  offline: json['offline'] != null ? OneOf2.parse(json['offline'], fromA: (v) => Offline.fromJson(v as Map<String, dynamic>), fromB: (v) => PostTerminalConfigurationsRequestOfflineVariant2.fromJson(v as String),) : null,
  rebootWindow: json['reboot_window'] != null ? PostTerminalConfigurationsRequestRebootWindow.fromJson(json['reboot_window'] as Map<String, dynamic>) : null,
  stripeS700: json['stripe_s700'] != null ? PostTerminalConfigurationsRequestStripeS700.fromJson(json['stripe_s700'] as Map<String, dynamic>) : null,
  stripeS710: json['stripe_s710'] != null ? PostTerminalConfigurationsRequestStripeS710.fromJson(json['stripe_s710'] as Map<String, dynamic>) : null,
  tipping: json['tipping'] != null ? OneOf2.parse(json['tipping'], fromA: (v) => Tipping.fromJson(v as Map<String, dynamic>), fromB: (v) => PostTerminalConfigurationsRequestTippingVariant2.fromJson(v as String),) : null,
  verifoneP400: json['verifone_p400'] != null ? PostTerminalConfigurationsRequestVerifoneP400.fromJson(json['verifone_p400'] as Map<String, dynamic>) : null,
  wifi: json['wifi'] != null ? OneOf2.parse(json['wifi'], fromA: (v) => Wifi.fromJson(v as Map<String, dynamic>), fromB: (v) => PostTerminalConfigurationsRequestWifiVariant2.fromJson(v as String),) : null,
); }

/// An object containing device type specific settings for BBPOS WisePad 3 readers.
final PostTerminalConfigurationsRequestBbposWisepad3? bbposWisepad3;

/// An object containing device type specific settings for BBPOS WisePOS E readers.
final PostTerminalConfigurationsRequestBbposWiseposE? bbposWiseposE;

/// Configuration for cellular connectivity.
final PostTerminalConfigurationsRequestCellular? cellular;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Name of the configuration
final String? name;

/// Configurations for collecting transactions offline.
final PostTerminalConfigurationsRequestOffline? offline;

/// Reboot time settings for readers. that support customized reboot time configuration.
final PostTerminalConfigurationsRequestRebootWindow? rebootWindow;

/// An object containing device type specific settings for Stripe S700 readers.
final PostTerminalConfigurationsRequestStripeS700? stripeS700;

/// An object containing device type specific settings for Stripe S710 readers.
final PostTerminalConfigurationsRequestStripeS710? stripeS710;

/// Tipping configurations for readers that support on-reader tips.
final PostTerminalConfigurationsRequestTipping? tipping;

/// An object containing device type specific settings for Verifone P400 readers.
final PostTerminalConfigurationsRequestVerifoneP400? verifoneP400;

/// Configurations for connecting to a WiFi network.
final PostTerminalConfigurationsRequestWifi? wifi;

Map<String, dynamic> toJson() { return {
  if (bbposWisepad3 != null) 'bbpos_wisepad3': bbposWisepad3?.toJson(),
  if (bbposWiseposE != null) 'bbpos_wisepos_e': bbposWiseposE?.toJson(),
  if (cellular != null) 'cellular': cellular?.toJson(),
  'expand': ?expand,
  'name': ?name,
  if (offline != null) 'offline': offline?.toJson(),
  if (rebootWindow != null) 'reboot_window': rebootWindow?.toJson(),
  if (stripeS700 != null) 'stripe_s700': stripeS700?.toJson(),
  if (stripeS710 != null) 'stripe_s710': stripeS710?.toJson(),
  if (tipping != null) 'tipping': tipping?.toJson(),
  if (verifoneP400 != null) 'verifone_p400': verifoneP400?.toJson(),
  if (wifi != null) 'wifi': wifi?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTerminalConfigurationsRequest copyWith({PostTerminalConfigurationsRequestBbposWisepad3 Function()? bbposWisepad3, PostTerminalConfigurationsRequestBbposWiseposE Function()? bbposWiseposE, PostTerminalConfigurationsRequestCellular Function()? cellular, List<String> Function()? expand, String Function()? name, PostTerminalConfigurationsRequestOffline Function()? offline, PostTerminalConfigurationsRequestRebootWindow Function()? rebootWindow, PostTerminalConfigurationsRequestStripeS700 Function()? stripeS700, PostTerminalConfigurationsRequestStripeS710 Function()? stripeS710, PostTerminalConfigurationsRequestTipping Function()? tipping, PostTerminalConfigurationsRequestVerifoneP400 Function()? verifoneP400, PostTerminalConfigurationsRequestWifi Function()? wifi, }) { return PostTerminalConfigurationsRequest(
  bbposWisepad3: bbposWisepad3 != null ? bbposWisepad3() : this.bbposWisepad3,
  bbposWiseposE: bbposWiseposE != null ? bbposWiseposE() : this.bbposWiseposE,
  cellular: cellular != null ? cellular() : this.cellular,
  expand: expand != null ? expand() : this.expand,
  name: name != null ? name() : this.name,
  offline: offline != null ? offline() : this.offline,
  rebootWindow: rebootWindow != null ? rebootWindow() : this.rebootWindow,
  stripeS700: stripeS700 != null ? stripeS700() : this.stripeS700,
  stripeS710: stripeS710 != null ? stripeS710() : this.stripeS710,
  tipping: tipping != null ? tipping() : this.tipping,
  verifoneP400: verifoneP400 != null ? verifoneP400() : this.verifoneP400,
  wifi: wifi != null ? wifi() : this.wifi,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalConfigurationsRequest &&
          bbposWisepad3 == other.bbposWisepad3 &&
          bbposWiseposE == other.bbposWiseposE &&
          cellular == other.cellular &&
          listEquals(expand, other.expand) &&
          name == other.name &&
          offline == other.offline &&
          rebootWindow == other.rebootWindow &&
          stripeS700 == other.stripeS700 &&
          stripeS710 == other.stripeS710 &&
          tipping == other.tipping &&
          verifoneP400 == other.verifoneP400 &&
          wifi == other.wifi; } 
@override int get hashCode { return Object.hash(bbposWisepad3, bbposWiseposE, cellular, Object.hashAll(expand ?? const []), name, offline, rebootWindow, stripeS700, stripeS710, tipping, verifoneP400, wifi); } 
@override String toString() { return 'PostTerminalConfigurationsRequest(bbposWisepad3: $bbposWisepad3, bbposWiseposE: $bbposWiseposE, cellular: $cellular, expand: $expand, name: $name, offline: $offline, rebootWindow: $rebootWindow, stripeS700: $stripeS700, stripeS710: $stripeS710, tipping: $tipping, verifoneP400: $verifoneP400, wifi: $wifi)'; } 
 }
