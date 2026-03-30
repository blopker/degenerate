// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostInvoicesInvoiceRequestRenderingPdfPageSize {const PostInvoicesInvoiceRequestRenderingPdfPageSize._(this.value);

factory PostInvoicesInvoiceRequestRenderingPdfPageSize.fromJson(String json) { return switch (json) {
  'a4' => a4,
  'auto' => auto,
  'letter' => letter,
  _ => PostInvoicesInvoiceRequestRenderingPdfPageSize._(json),
}; }

static const PostInvoicesInvoiceRequestRenderingPdfPageSize a4 = PostInvoicesInvoiceRequestRenderingPdfPageSize._('a4');

static const PostInvoicesInvoiceRequestRenderingPdfPageSize auto = PostInvoicesInvoiceRequestRenderingPdfPageSize._('auto');

static const PostInvoicesInvoiceRequestRenderingPdfPageSize letter = PostInvoicesInvoiceRequestRenderingPdfPageSize._('letter');

static const List<PostInvoicesInvoiceRequestRenderingPdfPageSize> values = [a4, auto, letter];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestRenderingPdfPageSize && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestRenderingPdfPageSize($value)'; } 
 }
final class PostInvoicesInvoiceRequestRenderingPdf {const PostInvoicesInvoiceRequestRenderingPdf({this.pageSize});

factory PostInvoicesInvoiceRequestRenderingPdf.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceRequestRenderingPdf(
  pageSize: json['page_size'] != null ? PostInvoicesInvoiceRequestRenderingPdfPageSize.fromJson(json['page_size'] as String) : null,
); }

final PostInvoicesInvoiceRequestRenderingPdfPageSize? pageSize;

Map<String, dynamic> toJson() { return {
  if (pageSize != null) 'page_size': pageSize?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'page_size'}.contains(key)); } 
PostInvoicesInvoiceRequestRenderingPdf copyWith({PostInvoicesInvoiceRequestRenderingPdfPageSize Function()? pageSize}) { return PostInvoicesInvoiceRequestRenderingPdf(
  pageSize: pageSize != null ? pageSize() : this.pageSize,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceRequestRenderingPdf &&
          pageSize == other.pageSize; } 
@override int get hashCode { return pageSize.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestRenderingPdf(pageSize: $pageSize)'; } 
 }
