10.times do |index|
  Post.create(
      title: "タイトル#{index}",
      kind: "パワハラ",
      guilty: 10,
      not_guilty: 5
  )
end
