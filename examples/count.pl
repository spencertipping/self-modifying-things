#!/usr/bin/perl
$_code = <<'_';
$_data = join '', <DATA>;

print ++$_data, "\n";

open my $fh, '>', $0;
print $fh "#!/usr/bin/perl\n\$_code = <<'_';\n${_code}_\neval\$_code;\n__DATA__\n$_data";
close $fh;
_
eval$_code;
__DATA__
1
