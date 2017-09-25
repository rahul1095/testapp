json.extract! finalresult, :id, :result, :user_id, :answer_id, :created_at, :updated_at
json.url finalresult_url(finalresult, format: :json)
