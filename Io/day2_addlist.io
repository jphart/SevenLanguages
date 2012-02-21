//Create the 2d array
total := 0

numbers := list(list(1, 2, 3), list(4, 5, 6), list(7,8,9))

numbers foreach(i, v, v foreach(j, w, total = total + w))
total println#

//Can use flatten function to flatten a list.
