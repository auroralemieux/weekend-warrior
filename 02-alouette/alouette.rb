class Alouette
  # attr_reader :verse_lines
  def initialize

  end

  def self.lines_for_verse(how_many_lines)
    all_lines = [
      "Et la tête!",
      "Et le bec!",
      "Et les yeux!",
      "Et le cou!",
      "Et les ailes!",
      "Et les pattes!",
      "Et la queue!",
      "Et le dos!"
    ]
    verse_lines = []
    all_lines[0..how_many_lines].each do |song_line|
      verse_lines << song_line
    end
    verse_lines.reverse!
    return verse_lines
  end

  def self.verse(how_many_verses)
    je_te_plumerai = "Je te plumerai "
    alouette = "Alouette!"
    aaah = "A-a-a-ah"
    # this returns an array of the single lines
    and_the_body_parts = Alouette.lines_for_verse(how_many_verses)
    

  end

  def self.sing
  end

end
