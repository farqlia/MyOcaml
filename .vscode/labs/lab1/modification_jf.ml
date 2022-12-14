let rotations2 l =
  let rec rotations_helper(v, l) = 
    match l with 
    | h1::h2::t -> if h1 *. h2 < 0. then rotations_helper (v *. h1 /. h2, h2::t) else rotations_helper (v, h2::t) 
    | h1::_ -> v
    | [] -> 0.
  in rotations_helper(1., l);;
;;

rotations2 [-40.; 10.; 50.; 20.; -10.; -20.; -30.; 60.];;
rotations2 [-40.; 10.; 50.; 20.; -10.];;
rotations2 [20.; 10.; -10.; -15.; -40.; 20.];;
rotations2 [];;

let rotations3 l = 
  let rec rotations_helper(v, l) =
    if l = [] then 0.
    else if List.tl l = [] then v
    else let h1 = List.hd l in let h2 = List.hd (List.tl l) in
    if h1 *. h2 < 0. then rotations_helper(h1 *. v /. h2, List.tl l) else rotations_helper(v, List.tl l)
  in rotations_helper(1., l);;

rotations3 [-40.; 10.; 50.; 20.; -10.; -20.; -30.; 60.];;
rotations3 [-40.; 10.; 50.; 20.; -10.];;
rotations3 [20.; 10.; -10.; -15.; -40.; 20.];;


let sgn x = if x < 0. then -1. else 1.;;

let rec rotations2 (v, l) =
  match l with 
  | h1::h2::t -> if h1 *. h2 < 0. then rotations2 (v *. h1 /. h2, h2::t) else rotations2 (v, h2::t) 
  | h1::_ -> v
  | [] -> 0.
;;

rotations2 (1., [-40.; 10.; 50.; 20.; -10.; -20.; -30.; 60.]);;
rotations2 (1., [-40.; 10.; 50.; 20.; -10.]);;
rotations2 (1., [20.; 10.; -10.; -15.; -40.; 20.]);;

let rec rotations3 (v, l) = 
  if l = [] then 0.
  else if List.tl l = [] then v
  else let h1 = List.hd l in let h2 = List.hd (List.tl l) in
  if h1 *. h2 < 0. then rotations3(h1 *. v /. h2, List.tl l) else rotations3(v, List.tl l);;


rotations3 (1., [-40.; 10.; 50.; 20.; -10.; -20.; -30.; 60.]);;
rotations3 (1., [-40.; 10.; 50.; 20.; -10.]);;
rotations3 (1., [20.; 10.; -10.; -15.; -40.; 20.]);;


