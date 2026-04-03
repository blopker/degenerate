// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_item_redirect.dart';@immutable final class ListsListItemRedirectObject {const ListsListItemRedirectObject({required this.redirect});

factory ListsListItemRedirectObject.fromJson(Map<String, dynamic> json) { return ListsListItemRedirectObject(
  redirect: ListsItemRedirect.fromJson(json['redirect'] as Map<String, dynamic>),
); }

final ListsItemRedirect redirect;

Map<String, dynamic> toJson() { return {
  'redirect': redirect.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('redirect'); } 
ListsListItemRedirectObject copyWith({ListsItemRedirect? redirect}) { return ListsListItemRedirectObject(
  redirect: redirect ?? this.redirect,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListItemRedirectObject &&
          redirect == other.redirect; } 
@override int get hashCode { return redirect.hashCode; } 
@override String toString() { return 'ListsListItemRedirectObject(redirect: $redirect)'; } 
 }
