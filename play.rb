class Hangman

    def initialize 
        @letters = ('a'..'z').to_a
        @word = words.sample
        @lives = 7
        @correct_guesses = []
        @word_teaser = ""

        @word.first.size.times do
            @word_teaser += "_ "
        end
    
    end

    def words
        [
            ['cricket', 'a game played by gentlemen'],
            ['running', 'we are not walking....'],
            ['whiskey', 'goes great with a beer'],
            ['cheese', 'always order extra!'],
            ['facetious', 'that is just not necessary'],
            ['final fantasy', 'classic rpg'],
            ['jazz', 'tunes with feeling'],
        ]
    end
    
    def print_teaser last_guess = nil
       update_teaser(last_guess) unless last_guess.nil?
        puts @word_teaser
    end

    def update_teaser last_guess
        new_teaser = @word_teaser.split
        
        new_teaser.each_with_index do |letter, index|
            #replace blank value with letter if matches in word
            if letter == '_' && @word.first[index] == last_guess
                new_teaser[index] = last_guess
            end
        end

        @word_teaser = new_teaser.join(' ')
    end

    def make_guess
        if @lives > 0
        puts "Enter a letter"
        guess = gets.chomp

        #checks if letter is part of word, if not remove from letters array 
        good_guess = @word.first.include? guess

        if good_guess
            puts "You are correct!"

            @correct_guesses << guess

            #remove correct guess from alphabet
            @letters.delete guess

            print_teaser guess
            make_guess
        else
            @lives -= 1
            puts "Sorry... you have #{ @lives } lives left. try again!"
            make_guess
            
    end
    else
        puts "Game over! Better luck next time!"
    end
end


    def begin
        #starts game asking for letter
        puts "New game started... your word is #{ @word.first.size } characters long"
        print_teaser

        puts "Clue: #{ @word.last }"

        make_guess
    end
end

game = Hangman.new
game.begin

