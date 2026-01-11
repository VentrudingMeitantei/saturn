module Bst = struct 
  include Saturn.Bst2_ez
end

let int_compare (a : int) (b : int) = compare a b
let int_print (x : int) = print_int x

let () = 
  let t = Bst.create ~compare: int_compare int_print () in
  Bst.add t 3 int_print;
  ignore(Bst.remove t 3 int_print);
  Bst.print_tree t int_print;
