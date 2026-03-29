// GENERATED CODE - DO NOT MODIFY BY HAND

/// Page size of invoice pdf. Options include a4, letter, and auto. If set to auto, page size will be switched to a4 or letter based on customer locale.
final class InvoiceRenderingPdfPageSize {const InvoiceRenderingPdfPageSize._(this.value);

factory InvoiceRenderingPdfPageSize.fromJson(String json) { return switch (json) {
  'a4' => a4,
  'auto' => auto,
  'letter' => letter,
  _ => InvoiceRenderingPdfPageSize._(json),
}; }

static const InvoiceRenderingPdfPageSize a4 = InvoiceRenderingPdfPageSize._('a4');

static const InvoiceRenderingPdfPageSize auto = InvoiceRenderingPdfPageSize._('auto');

static const InvoiceRenderingPdfPageSize letter = InvoiceRenderingPdfPageSize._('letter');

static const List<InvoiceRenderingPdfPageSize> values = [a4, auto, letter];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoiceRenderingPdfPageSize && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoiceRenderingPdfPageSize($value)'; } 
 }
/// 
final class InvoiceRenderingPdf {const InvoiceRenderingPdf({this.pageSize});

factory InvoiceRenderingPdf.fromJson(Map<String, dynamic> json) { return InvoiceRenderingPdf(
  pageSize: json['page_size'] != null ? InvoiceRenderingPdfPageSize.fromJson(json['page_size'] as String) : null,
); }

/// Page size of invoice pdf. Options include a4, letter, and auto. If set to auto, page size will be switched to a4 or letter based on customer locale.
final InvoiceRenderingPdfPageSize? pageSize;

Map<String, dynamic> toJson() { return {
  if (pageSize != null) 'page_size': pageSize?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'page_size'}.contains(key)); } 
InvoiceRenderingPdf copyWith({InvoiceRenderingPdfPageSize? Function()? pageSize}) { return InvoiceRenderingPdf(
  pageSize: pageSize != null ? pageSize() : this.pageSize,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceRenderingPdf &&
          pageSize == other.pageSize; } 
@override int get hashCode { return pageSize.hashCode; } 
@override String toString() { return 'InvoiceRenderingPdf(pageSize: $pageSize)'; } 
 }
