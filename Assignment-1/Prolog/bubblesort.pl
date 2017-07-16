/*scan from left to right, if no correction takes place, the list is sorted.*/
bubblesort(List,SortedList):-
    swap(List,ListNew),
    !,
    bubblesort(ListNew,SortedList).
bubblesort(List,List).

/*Scan recursively until find a pair X/Y to swap*/
swap([X,Y|Rest],[Y,X|Rest]):-
    X > Y.
swap([H|Rest],[H|RestList]):-
    swap(Rest,RestList).