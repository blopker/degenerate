/// Entry-wise equality check for maps.
///
/// Returns `true` if both maps have the same length and all entries
/// have equal keys and values via `==`.
bool mapEquals<K, V>(Map<K, V>? a, Map<K, V>? b) {
  if (identical(a, b)) return true;
  if (a == null || b == null) return false;
  if (a.length != b.length) return false;
  for (final entry in a.entries) {
    if (!b.containsKey(entry.key) || b[entry.key] != entry.value) return false;
  }
  return true;
}

/// An order-independent hash using the same entry equality as [mapEquals].
int mapHash<K, V>(Map<K, V> map) => Object.hashAllUnordered(
  map.entries.map((entry) => Object.hash(entry.key, entry.value)),
);
