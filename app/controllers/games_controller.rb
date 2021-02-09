class GamesController < ApplicationController

  def new
    alphabet = ('A'..'Z').to_a
    @letters = []
    10.times do
      @letters << alphabet.sample
    end
  end

  def score
    @answer = params[:answer].split('')
    @letters = params[:letters].split('')
    @word = []
    @answer.each do 
    end
  end

  private

  def included?
    @answer = params[:answer].split('')
    @letters = params[:letters].split('')
    @letters.all? { |word| word.count }
  end

  def english_word?(item)
    url = 
    read = open(url).read
    word = JSON.parse(read)
    @english_word = word.found
  end
end
