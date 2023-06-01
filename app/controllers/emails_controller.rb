class EmailsController < ApplicationController
  
  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::ChuckNorris.fact, body: Faker::Movies::HarryPotter.book)
    redirect_to emails_path
  end

end
