import argv
import exercise_test
import gleam/io

pub fn main() {
  case argv.load().arguments {
    ["test", a, b] -> exercise_test.run_test(a, b)
    _ -> io.println("Usage: vars get <name>")
  }
}
