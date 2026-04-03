// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Describes whether Checkout should display Link. Defaults to `auto`.
@immutable final class CheckoutLinkWalletOptionsDisplay {const CheckoutLinkWalletOptionsDisplay._(this.value);

factory CheckoutLinkWalletOptionsDisplay.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'never' => never,
  _ => CheckoutLinkWalletOptionsDisplay._(json),
}; }

static const CheckoutLinkWalletOptionsDisplay auto = CheckoutLinkWalletOptionsDisplay._('auto');

static const CheckoutLinkWalletOptionsDisplay never = CheckoutLinkWalletOptionsDisplay._('never');

static const List<CheckoutLinkWalletOptionsDisplay> values = [auto, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutLinkWalletOptionsDisplay && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutLinkWalletOptionsDisplay($value)'; } 
 }
/// 
@immutable final class CheckoutLinkWalletOptions {const CheckoutLinkWalletOptions({this.display});

factory CheckoutLinkWalletOptions.fromJson(Map<String, dynamic> json) { return CheckoutLinkWalletOptions(
  display: json['display'] != null ? CheckoutLinkWalletOptionsDisplay.fromJson(json['display'] as String) : null,
); }

/// Describes whether Checkout should display Link. Defaults to `auto`.
final CheckoutLinkWalletOptionsDisplay? display;

Map<String, dynamic> toJson() { return {
  if (display != null) 'display': display?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display'}.contains(key)); } 
CheckoutLinkWalletOptions copyWith({CheckoutLinkWalletOptionsDisplay Function()? display}) { return CheckoutLinkWalletOptions(
  display: display != null ? display() : this.display,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutLinkWalletOptions &&
          display == other.display; } 
@override int get hashCode { return display.hashCode; } 
@override String toString() { return 'CheckoutLinkWalletOptions(display: $display)'; } 
 }
