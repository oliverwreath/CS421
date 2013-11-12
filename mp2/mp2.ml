(* CS421 - Summer 2013
 * MP2 
 *
 * Please keep in mind that there may be more than one
 * way to solve a problem.  You will want to change how a number of these starts.
 *)

(* Problem 1 *)
let polar_prod r = match r with 
((r1, x1), (r2, x2)) -> (r1 *. r2, x1 +. x2);;

(* Problem 2 *)
let rec s n = if n <= 0
then 0
else if n mod 2 <> 0
	then 2 * (s (n-1)) + n
	else 3 * (s (n-2)) + 2 * n;;

(* Problem 3 *)
let rec filter p xs = match xs with
[] -> []
| x::xs -> if p x = true 
then ([x]@filter p xs)
else (filter p xs);; 

(* Problem 4 *)
let rec has_true p xs = match xs with 
[] -> 0
| x::xs -> if p x = true 
then (1 + has_true p xs)
else (has_true p xs);;

let rec has_two p xs = if has_true p xs > 1
then true 
else false;;


(* Problem 5 *)
let rec myListCount xs = 
match xs with 
[] -> 0
| x::xs -> (1 + (myListCount xs));;

let rec myListCountFloat xs = 
match xs with 
[] -> 0.
| x::xs -> (1. +. (myListCountFloat xs));;

let rec myListRev xs = 
match xs with 
[] -> []
| x::xs -> ( myListRev xs@[x] );;

(*let rec sumup xs ys = match xs ys with
[] [] -> [] []
| x::xs y::ys -> ((x+y)::(sumup xs ys));;*)

(*let rec sumupXlong xs ys = match xs ys with
[] [] -> [] []
| x::xs y::ys -> ((x+y)::(sumup xs ys));;*)

let rec sumup xs ys = match xs, ys with
[], [] -> []
| [], y::ys -> ((0+y)::(sumup xs ys))
| x::xs, [] -> ((x+0)::(sumup xs ys))
| x::xs, y::ys -> ((x+y)::(sumup xs ys));;

let rec sum xs ys = sumup xs ys;;


(* Problem 6 *)
let myfst (x, y) = x;;
let mysnd (x, y) = y;;
let rec split xs = match xs with 
[] -> [], []
| x::xs -> if x >= 0 
then [x]@(myfst (split xs)),[]@(mysnd (split xs))
else []@(myfst (split xs)),[x]@(mysnd (split xs));;

(* Problem 7 *)
let rec myListSum xs = match xs with 
[] -> 0
| x::xs -> (x + (myListSum xs));;

let rec myListSumFloat xs = match xs with 
[] -> 0.
| x::xs -> (x +. (myListSumFloat xs));;

let rec subtract_the_mean xs mean = match xs with 
[] -> []
| x::xs -> ((x-.mean)::(subtract_the_mean xs mean));;


let rec diff_from_mean xs = subtract_the_mean xs ((myListSumFloat xs) /. (myListCountFloat xs));;


(* Problem 8 *)
let rec check_ijth_2 xs p (i,j) = match xs with 
[] -> false
| x::xs -> if j = 1
then (p x)
else check_ijth_2 xs p (i,j-1);;

let rec check_ijth_1 matrix p (i,j) = match matrix with 
[] -> false
| x::xs -> if i = 1
then check_ijth_2 x p (i,j)
else check_ijth_1 xs p (i-1,j);;

let rec check_ijth matrix p (i,j) = check_ijth_1 matrix p (i+1,j+1);;
