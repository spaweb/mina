dune b src/lib/snarky_js_bindings/snarky_js_chrome.bc.js
rm -r ~/repos/snarkyjs/src/chrome_bindings/snippets
cp -r _build/default/src/lib/crypto/kimchi_bindings/js/chrome/snippets ~/repos/snarkyjs/src/chrome_bindings/snippets
cp _build/default/src/lib/crypto/kimchi_bindings/js/chrome/plonk_wasm* ~/repos/snarkyjs/src/chrome_bindings/
cp _build/default/src/lib/snarky_js_bindings/*.js ~/repos/snarkyjs/src/chrome_bindings/

pushd ~/repos/snarkyjs/src/chrome_bindings
  wasm-opt -O4 plonk_wasm_bg.wasm -o plonk_wasm_bg.wasm.opt
  mv plonk_wasm_bg.wasm.opt plonk_wasm_bg.wasm
popd