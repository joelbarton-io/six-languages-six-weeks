/* function hashFromArray(arr) {

  return (arr.reduce((acc, cv) => {
    // optionally, standardize element class...
    // cv = Boolean(cv);
    // cv = Number(cv);
    // cv = String(cv);
    if (acc[cv]) {
      acc[cv]++;
      return acc;
    }
    acc[cv] = 1;
    return acc;
  }, {}));
}
// console.log(hashFromArray([1, 2, 3, 4, 5, 5, 5, 1, 2]))


console.log(hashFromArray([[], {}, {}, new Set(), Math.max(), null, undefined, undefined]));
 */

// INITIAL QUERY
const list = [1, 2, 3];

length(list); // count(Length, [1, 2, 3]).

function length(list, n = 0) {
  console.log(list, n);
  if (list.length === 0) return n;     // count(0, []).             BASE CASE
  return length(list.slice(1), n + 1); // count(Length, [H|Tail]) :- count(TailLength, Tail), % subgoal, (recursive call) Length is TailLength + 1.
}


