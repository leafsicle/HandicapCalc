def array_cleaner(scoresArr)
  arrLength = scoresArr.length
  puts arrLength
  case arrLength
  when 0..3
      []
  when 3..19
    scoresArr
  when (20..)
    scoresArr.slice(arrLength-8..arrLength-1)
  end
end