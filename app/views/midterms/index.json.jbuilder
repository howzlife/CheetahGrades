json.array!(@midterms) do |midterm|
  json.extract! midterm, :id, :school, :courseCode, :year, :corrected, :professor, :semester
  json.url midterm_url(midterm, format: :json)
end
