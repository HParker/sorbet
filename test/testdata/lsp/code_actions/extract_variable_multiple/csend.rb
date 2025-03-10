# typed: true
# selective-apply-code-action: refactor.extract
# enable-experimental-lsp-extract-to-variable: true

a = T.let(1, T.nilable(Integer))

puts(a&.to_s)
puts(a&.to_s)
#    ^ apply-code-action: [A] Extract Variable (this occurrence only)
#    ^ apply-code-action: [B] Extract Variable (all 2 occurrences)

b = T.unsafe(1)

  1.times do b&.foo end
# ^^^^^^^^^^^^^^^^^^^^^ apply-code-action: [C] Extract Variable (this occurrence only)
