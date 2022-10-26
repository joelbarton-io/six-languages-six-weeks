function count(leng, list) {
  console.log(leng, list);

  if (list.length === 0) return leng;

  return count(leng + 1, list.slice(1));
}

const c = count(0, [1, 2, 3]);

console.log('The count of [1, 2, 3] is: ' + c)
