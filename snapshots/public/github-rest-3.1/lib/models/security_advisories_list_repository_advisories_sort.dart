// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecurityAdvisoriesListRepositoryAdvisoriesSort {const SecurityAdvisoriesListRepositoryAdvisoriesSort._(this.value);

factory SecurityAdvisoriesListRepositoryAdvisoriesSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  'published' => published,
  _ => SecurityAdvisoriesListRepositoryAdvisoriesSort._(json),
}; }

static const SecurityAdvisoriesListRepositoryAdvisoriesSort created = SecurityAdvisoriesListRepositoryAdvisoriesSort._('created');

static const SecurityAdvisoriesListRepositoryAdvisoriesSort updated = SecurityAdvisoriesListRepositoryAdvisoriesSort._('updated');

static const SecurityAdvisoriesListRepositoryAdvisoriesSort published = SecurityAdvisoriesListRepositoryAdvisoriesSort._('published');

static const List<SecurityAdvisoriesListRepositoryAdvisoriesSort> values = [created, updated, published];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesListRepositoryAdvisoriesSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesListRepositoryAdvisoriesSort($value)'; } 
 }
