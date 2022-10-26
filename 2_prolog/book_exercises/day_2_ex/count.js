function count(leng, list) {
  console.log(leng, list);

  if (list.length === 0) return leng; // base case

  return count(leng + 1, list.slice(1)); // recursive case
}

const c = count(0, [1, 2, 3]);

console.log('The length of [1, 2, 3] is: ' + c)
