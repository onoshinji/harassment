20.times do |index|
  Post.create(
      title: "テスト#{index}",
      kind: "パワハラ",
      guilty: 1,
      not_guilty: 1,
      little_guilty: 1,
      little_not_guilty: 1
  )
end
