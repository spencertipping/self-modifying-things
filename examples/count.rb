#!/usr/bin/ruby
$_code = <<'_'
$_data = DATA.read

puts $_data
$_data = ($_data.to_i + 1).to_s

File.open($0, 'w') do |f|
  f.write "#!/usr/bin/ruby\n$_code = <<'_'\n#{$_code}_\neval $_code;\n__END__\n#{$_data}";
end
_
eval $_code;
__END__
1
