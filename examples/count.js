(function (f, d) {f(f, d)})(function ($_code, $_data) {
  console.log(++$_data);

  (function () {
    require('fs').writeFileSync(process.argv[1],
      '(function (f, d) {f(f, d)})(' + $_code + ', ' +
                                       JSON.stringify($_data) + ');',
      'utf8');
  })();
}, 1);
