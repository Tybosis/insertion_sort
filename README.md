# Insertion Sort

by Tyler Pottle

## Description

This program will sort an array using the [insertion sort algorithm](http://en.wikipedia.org/wiki/Insertion_sort)

My approach was a modification of my approach during the whiteboard assignment.
I used a variable labeled 'current' to keep track of which number I was currently
trying to sort.  I also had a variable labeled 'holder' to kept track of the
progress that had occured so far in advancing the sorting process forward.
Basically, holder increments by one if the current item is greater than the
previous item. If not, the current item will swap places with the previous item,
decrement by one, and check again, all the way down to the beginning of the
array if necessary.  Once holder reaches the end of the array, we know that the
rest of the array has been sorted by the swapping process, and we can return
the fully sorted array.

### Collaborators

The (awesome) use of multiple variable assignment to swap adjacent items in the
array came from my classmate Tim Heuett.
