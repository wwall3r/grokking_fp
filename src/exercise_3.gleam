import gleam/list

pub fn first_two(item: List(_)) {
  item
  |> list.take(2)
}

pub fn last_two(item: List(_)) {
  item
  |> list.reverse()
  |> first_two()
  |> list.reverse()
}

pub fn moved_first_two_to_the_end(item: List(_)) {
  let #(moved, rest) =
    item
    |> list.split(2)

  list.append(rest, moved)
}

pub fn inserted_before_last(items: List(t), value: t) {
  let l = list.length(items)

  let #(start, last) =
    items
    |> list.split(l - 1)

  list.concat([start, [value], last])
}
