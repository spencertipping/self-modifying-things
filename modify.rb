#!/usr/bin/ruby
# Super-tiny self-modifying Ruby template | Spencer Tipping
# Licensed under the terms of the MIT source code license
#
# These comments are erased the first time you run the script.
#
# Instructions:
# 1. Make a copy of this file.
# 2. Run the copy once with no arguments. This normalizes the script.
# 3. Write Ruby code where it says YOUR CODE HERE.
#    Code that you write can modify the $_data global; any changes you make to
#    this value will persist across invocations of the script (provided your
#    code allows control flow to proceed normally, that is).

$_code = <<'_'
$_data = DATA.read

# YOUR CODE HERE

File.open($0, 'w') do |f|
  f.write "#!/usr/bin/ruby\n$_code = <<'_'\n#{$_code}_\neval $_code;\n__END__\n#{$_data}";
end
_
eval $_code
__END__
