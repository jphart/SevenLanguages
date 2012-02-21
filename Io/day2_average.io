
List myAverage := method(
total := 0
count := 0
self foreach(i, v, total = total + v
count = count + 1
)
(total / count) println
);

test := list(1, 2, 3, 4)
test myAverage



// Can use self sum to add up list elements and self size to get the size of a list
