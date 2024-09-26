import argv
import exercise_test
import gleam/io

pub fn main() {
  case argv.load().arguments {
    ["test"] -> exercise_test.run_test()
    _ -> io.println("Usage: vars get <name>")
  }
}
