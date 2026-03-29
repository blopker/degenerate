// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityScannableFolder {const EmailSecurityScannableFolder._(this.value);

factory EmailSecurityScannableFolder.fromJson(String json) { return switch (json) {
  'AllItems' => allItems,
  'Inbox' => inbox,
  _ => EmailSecurityScannableFolder._(json),
}; }

static const EmailSecurityScannableFolder allItems = EmailSecurityScannableFolder._('AllItems');

static const EmailSecurityScannableFolder inbox = EmailSecurityScannableFolder._('Inbox');

static const List<EmailSecurityScannableFolder> values = [allItems, inbox];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityScannableFolder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityScannableFolder($value)'; } 
 }
