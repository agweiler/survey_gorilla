require 'json'

get '/create' do
  erb :create_survey
end

post '/create' do
# p params[:num_of_choices]
  choices = params[:num_of_choices].to_i
  choice_array = []
  # byebug
  new_section = ""
  for i in 1..choices
    new_section += "Choice #{i}: <textarea name=\"choice_array[\" + i +\"]\" cols=\"40\" rows=\"2\"></textarea><br/><br/>"
  end
  new_section


end

# get '/complete' do
#   erb :complete_survey
# end

post "/create/done" do
  byebug
  p params[:survey_title]
  p params[:question]
  p params[:choice_array[0]]

end
