require 'json'

get '/create' do
  erb :create_survey
end

post '/create' do
# p params[:num_of_choices]
  choices = params[:num_of_choices].to_i
  choice_array = []

  new_section = ""
  for i in 1..choices
    new_section += "Choice #{i}: <textarea name=\"choice_#{i}\" cols=\"40\" rows=\"2\"></textarea><br/><br/>"
  end
  new_section


end

# get '/complete' do
#   erb :complete_survey
# end

post "/create/done" do
  # byebug
  survey_title = params[:survey_title]
  new_survey = Survey.create(title: survey_title)

  question_text = params[:new_question]
  new_question = new_survey.questions.create(text: question_text)

  num_of_choices = params[:num_of_choices]
  for i in 1..num_of_choices
    new_question.choices.create(answer: params[:choice_i])
  end

end
