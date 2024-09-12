import gleam/io

pub fn run_test(a: String, b: String) -> Nil {
  io.println(format_pair(a, b))
}

fn format_pair(name: String, value: String) -> String {
  name <> "=" <> value
}
