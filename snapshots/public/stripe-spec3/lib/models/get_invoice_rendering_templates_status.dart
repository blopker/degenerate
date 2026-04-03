// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetInvoiceRenderingTemplatesStatus {const GetInvoiceRenderingTemplatesStatus._(this.value);

factory GetInvoiceRenderingTemplatesStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'archived' => archived,
  _ => GetInvoiceRenderingTemplatesStatus._(json),
}; }

static const GetInvoiceRenderingTemplatesStatus active = GetInvoiceRenderingTemplatesStatus._('active');

static const GetInvoiceRenderingTemplatesStatus archived = GetInvoiceRenderingTemplatesStatus._('archived');

static const List<GetInvoiceRenderingTemplatesStatus> values = [active, archived];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetInvoiceRenderingTemplatesStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetInvoiceRenderingTemplatesStatus($value)'; } 
 }
