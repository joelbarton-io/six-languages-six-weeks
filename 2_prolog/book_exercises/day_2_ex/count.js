function length(n, list) {
  if (list.length === 0) return n;

  return length(n + 1, list.slice(1));
}

length(0, [1, 2, 3]);
