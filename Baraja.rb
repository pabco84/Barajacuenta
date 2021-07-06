class Card
    attr_accessor :number, :kind
    def initialize(number, kind)
        if (number >= 1 || number <= 13) && ["C", "D", "T", "E"].include?(kind)
            @number = number
            @kind = kind
        else
            raise "Nada que ver"
        end
    end
    def to_s
        "Numero #{self.number}, Pinta #{self.kind}"
    end
end

class Deck
    attr_reader :cards 
    def initialize
        # @cartas = (1..13).map{|num| %w[C D E T].map {|kind| Card.new(num, kind)}}
        # .flatten
        @cards = []
        (1..13).each do |num|
            %w[C D E T].each do |kind|
                @cards << Card.new(num, kind)
            end
        end
    end


def shuffles
    self.cards.shuffle
end

def draw
    self.cards.pop
end

def initial_draw
    self.cards.pop(5)

end
end 
pp Deck.new
pp "---------------"
cards = Deck.new
pp cards.shuffles
pp "---------------"
pp cards.initial_draw