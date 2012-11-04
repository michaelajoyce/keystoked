class TextsController < ApplicationController

  def create
    file_contents = File.open(params[:text][:body].tempfile).gets
    @text = Text.new(title: params[:text][:title], body: file_contents)
    if @text.save
      render :create
    else
      render :error
    end
  end

end
