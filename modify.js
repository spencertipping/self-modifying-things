// Super-tiny self-modifying node.js template | Spencer Tipping
// Licensed under the terms of the MIT source code license
//
// These comments are erased the first time you run the script.
//
// Instructions:
// 1. Make a copy of this file.
// 2. Run the copy once with no arguments. This normalizes the script.
// 3. Write code where it says YOUR CODE HERE.
//    Code that you write can modify the $_data global; any changes you make to
//    this value will persist across invocations of the script (provided your
//    code allows control flow to proceed normally, that is).

(function (f, d) {f(f, d)})(function ($_code, $_data) {
  // YOUR CODE HERE

  (function () {
    require('fs').writeFileSync(process.argv[1],
      '(function (f, d) {f(f, d)})(' + $_code + ', ' +
                                       JSON.stringify($_data) + ');',
      'utf8');
  })();
}, '');
