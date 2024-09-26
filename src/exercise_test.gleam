import gleam/io
import gleam/list
import gleam/string

pub fn run_test() -> Nil {
  let names = []
  io.debug(tip_percentage(names))
  Nil
}

pub fn tip_percentage(names: List(String)) -> Int {
  case list.length(names) {
    len if len > 5 -> 20
    len if len > 0 -> 10
    _ -> 0
  }
}

pub fn word_score(word: String) -> Int {
  word
  |> string.replace("a", "")
  |> string.length()
}

pub fn increment(x: Int) -> Int {
  x + 1
}

pub fn add(a: Int, b: Int) -> Int {
  a + b
}

pub fn get_first_character(s: String) -> String {
  case string.first(s) {
    Ok(char) -> char
    _ -> " "
  }
}
