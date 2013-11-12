(**mp1 grade report for 
================================

Latest handin (graded copy) was - on_time

*Regular Problems:
Grading script score  => [21 / 21]
Late Penalty          => 0
Point adjustments     => 
Total                 => 21

*Extra Credit:
Grading script score for extra credit => [0 / 0]
Late Penalty for extra credit         => 0
Point adjustments for extra credit    =>
Total extra credit                    =>


mp1grader program output
---------------------


[1 / 1] e (correct)
[1 / 1] welcome (correct)
[1 / 1] ten_less 17 (correct)
[1 / 1] ten_less (-2) (correct)
[1 / 1] e_to_the_square 1.4 (correct)
[1 / 1] e_to_the_square 0.0 (correct)
Your name is John, you say? Welcome to CS 421.
Your name is John, you say? Welcome to CS 421.
[1 / 1] recognize "John" (correct)
Ah, I know you.
Ah, I know you.
[1 / 1] recognize "Elsa" (correct)
Your name is , you say? Welcome to CS 421.
Your name is , you say? Welcome to CS 421.
[1 / 1] recognize "" (correct)
[1 / 1] has_smallest_floor 4.3 6.2 (correct)
[1 / 1] has_smallest_floor 4.0 4.1 (correct)
[1 / 1] has_smallest_floor (-3.9) (-4.1) (correct)
[1 / 1] has_smallest_floor 0.1 0.0 (correct)
[1 / 1] first_two (3, 5, 9) (correct)
[1 / 1] first_two (1.0, "no", ()) (correct)
[1 / 1] first_two ((), (5, 6), (fun () -> true)) (correct)
[1 / 1] app_triple Solution.ten_less (10, 11, 12) (correct)
[1 / 1] app_triple (fun a -> ()) (10., 11., 12.0) (correct)
[1 / 1] app_triple (fun s -> s ^ "\n") ("a", "b", "") (correct)
[1 / 1] app_triple (fun f -> f 1.5) (Solution.e_to_the_square, Solution.has_smallest_floor 0.1, (fun x -> x +. 1.5)) (correct)
[1 / 1] app_triple (fun (f, x) -> f x) ((Solution.first_two, (1, 2, 3)), (Solution.first_two, (0, 3, 4)), ((fun (a,b,c) -> (b, c)), (2, 5, 6))) (correct)

Total: [21 / 21]
Extra: [0 / 0]

Additional outout from compiling students code (may be empty)
----------------------------------------------------



Student's code (with comments and point adjustments)
----------------------------------------------------
**)

(* CS421 - Summer 2013
 * MP1 
 *
 * Please keep in mind that there may be more than one
 * way to solve a problem.  You will want to change how a number of these start.
 *)

(*open Mp1common*)

(* Problem 1 *)
let e = 2.71828;;  (* float *)

(* Problem 2 *)
let welcome = "Hello and welcome!";;

(* Problem 3 *)
let ten_less n = n - 10;;

(* Problem 4 *)
let e_to_the_square y = e ** (y ** 2.0);;

(* Problem 5 *)
let recognize name = 
	if name = "Elsa" 
		then print_string "Ah, I know you.\n"
		else (print_string "Your name is "; print_string name;
			print_string ", you say? Welcome to CS 421.\n");;

(* Problem 6 *)
let has_smallest_floor m n = 
if (floor m ) = (floor n)
then 	if m > n 
	then n 
	else m
else 	if (floor m)  > (floor n) 
	then n
	else m;;

(* Problem 7 *)
let first_two (x,y,z) = (x, y);;

(*Problem 8 *)
let app_triple f (x,y,z) = (f x, f y, f z);;


(**
Stdout
----------------------------------------------------

Your name is John, you say? Welcome to CS 421.
Your name is John, you say? Welcome to CS 421.
Ah, I know you.
Ah, I know you.
Your name is , you say? Welcome to CS 421.
Your name is , you say? Welcome to CS 421.
**)
