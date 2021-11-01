class Hangman

    def initialize 
        @letters = ('a'..'z').to_a
        @word = words.sample
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
    
    def print_teaser
        word_teaser = ""
        
        @word.first.size.times do
            word_teaser += "_ "
        end
    

        puts word_teaser
    end

    def make_guess

        puts "Enter a letter"
        guess = gets.chomp

        #checks if letter is part of word, if not remove from letters array 
        good_guess = @word.first.include? guess

        if good_guess
            puts "Good guess!"
        else
            puts "Sorry...try again!"
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

