// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates whether a campaign is open or closed
@immutable final class CampaignState {const CampaignState._(this.value);

factory CampaignState.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  _ => CampaignState._(json),
}; }

static const CampaignState open = CampaignState._('open');

static const CampaignState closed = CampaignState._('closed');

static const List<CampaignState> values = [open, closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CampaignState($value)'; } 
 }
