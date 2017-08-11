json.extract! question, :id, :title, :content, :constraint, :inputtestcases, :outputtestcases, :marks, :difficulty, :tag, :created_at, :updated_at
json.url question_url(question, format: :json)
