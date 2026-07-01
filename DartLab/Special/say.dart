String s(f, m, [d]) => ["$f says $m", if (d != null) "with a $d"].join(" ");

void main() {
  print(s('Bob', 'Howdy?'));
  print(s('Alice', 'Hi!', 'smartphone'));
}
