class Hangman

    def initialize 
        letters = ('a'..'z').to_a
        word = words.sample
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

    def begin
        #starts game asking for letter
end