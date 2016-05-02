json.array!(@term_courses) do |term_course|
  json.extract! term_course, :id, :name
  json.url term_course_url(term_course, format: :json)
end
