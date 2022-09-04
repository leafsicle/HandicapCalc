def score_avg(scores) # scores is an array.
  totalScore= scores.reduce(0) { |sum, num| sum + num }.to_f
  return (totalScore / scores.length)
end