import exercise_test
import gleam/iterator
import gleam/list
import gleeunit
import gleeunit/should

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn hello_world_test() {
  1
  |> should.equal(1)
}

pub fn tip_percentage_test() {
  let full = ["alice", "bob", "christa", "dave", "eve", "george"]

  full
  |> exercise_test.tip_percentage()
  |> should.equal(20)

  full
  |> list.take(5)
  |> exercise_test.tip_percentage()
  |> should.equal(10)

  full
  |> list.take(1)
  |> exercise_test.tip_percentage()
  |> should.equal(10)

  []
  |> exercise_test.tip_percentage()
  |> should.equal(0)
}

pub fn word_score_test() {
  ""
  |> exercise_test.word_score()
  |> should.equal(0)

  "def"
  |> exercise_test.word_score()
  |> should.equal(3)

  "aaa"
  |> exercise_test.word_score()
  |> should.equal(0)

  "adaeaf"
  |> exercise_test.word_score()
  |> should.equal(3)
}

pub fn increment_test() {
  iterator.range(-20, 20)
  |> iterator.each(fn(n) {
    n
    |> exercise_test.increment()
    |> should.equal(n + 1)
  })
}

pub fn add_test() {
  iterator.range(-20, 20)
  |> iterator.each(fn(a) {
    iterator.range(-20, 20)
    |> iterator.each(fn(b) {
      exercise_test.add(a, b)
      |> should.equal(a + b)
    })
  })
}

pub fn get_first_character_test() {
  ""
  |> exercise_test.get_first_character()
  |> should.equal(" ")

  "a"
  |> exercise_test.get_first_character()
  |> should.equal("a")

  "abcd"
  |> exercise_test.get_first_character()
  |> should.equal("a")
}
