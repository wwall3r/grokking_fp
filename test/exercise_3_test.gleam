import exercise_3
import gleeunit
import gleeunit/should

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn first_two_test() {
  ["a", "b", "c"]
  |> exercise_3.first_two()
  |> should.equal(["a", "b"])

  [1, 2, 3]
  |> exercise_3.first_two()
  |> should.equal([1, 2])

  [1]
  |> exercise_3.first_two()
  |> should.equal([1])

  []
  |> exercise_3.first_two()
  |> should.equal([])
}

pub fn last_two_test() {
  ["a", "b", "c"]
  |> exercise_3.last_two()
  |> should.equal(["b", "c"])

  [1, 2, 3]
  |> exercise_3.last_two()
  |> should.equal([2, 3])

  [1]
  |> exercise_3.last_two()
  |> should.equal([1])

  []
  |> exercise_3.last_two()
  |> should.equal([])
}

pub fn moved_first_two_to_the_end_test() {
  ["a", "b", "c"]
  |> exercise_3.moved_first_two_to_the_end()
  |> should.equal(["c", "a", "b"])

  [1, 2, 3]
  |> exercise_3.moved_first_two_to_the_end()
  |> should.equal([3, 1, 2])

  [1, 2]
  |> exercise_3.moved_first_two_to_the_end()
  |> should.equal([1, 2])

  [1]
  |> exercise_3.moved_first_two_to_the_end()
  |> should.equal([1])

  []
  |> exercise_3.moved_first_two_to_the_end()
  |> should.equal([])
}

pub fn inserted_before_last_test() {
  ["a", "c"]
  |> exercise_3.inserted_before_last("b")
  |> should.equal(["a", "b", "c"])

  [1, 3]
  |> exercise_3.inserted_before_last(2)
  |> should.equal([1, 2, 3])

  [1]
  |> exercise_3.inserted_before_last(2)
  |> should.equal([2, 1])

  []
  |> exercise_3.inserted_before_last(1)
  |> should.equal([1])
}
