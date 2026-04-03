// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CampaignsListOrgCampaignsDirection {const CampaignsListOrgCampaignsDirection._(this.value);

factory CampaignsListOrgCampaignsDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => CampaignsListOrgCampaignsDirection._(json),
}; }

static const CampaignsListOrgCampaignsDirection asc = CampaignsListOrgCampaignsDirection._('asc');

static const CampaignsListOrgCampaignsDirection desc = CampaignsListOrgCampaignsDirection._('desc');

static const List<CampaignsListOrgCampaignsDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsListOrgCampaignsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CampaignsListOrgCampaignsDirection($value)'; } 
 }
