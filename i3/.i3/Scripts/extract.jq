# break out early
def filter($key):
  label $out
  | foreach inputs as $in ( null;
      if . == null
      then if $in[0][0] == $key then $in
           else empty
           end
      elif $in[0][0] != $key then break $out
      else $in
      end;
      select(length==2) );

