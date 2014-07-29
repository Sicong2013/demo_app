json.array!(@micropostcorrects) do |micropostcorrect|
  json.extract! micropostcorrect, :content, :user_id
  json.url micropostcorrect_url(micropostcorrect, format: :json)
end