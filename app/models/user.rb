class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :user_surveys
  has_many :surveys, through: :user_surveys

  has_many :user_choices
  has_many :choices, through: :user_choices



   def self.authenticate(name, password)

     account =  User.find_by_name(name)
     if account.nil? == false && account.password == password
       return account
     else
      return nil
     end

   end

end


# Finding the question ID for a given choice
# Choice.where(id: UserChoice.where(user_id: 2).first.choice_id).first.question_id

# Finding the survey
# Question.where(id: Choice.where(id: UserChoice.where(user_id: 2).first.choice_id).first.question_id).first.survey_id





