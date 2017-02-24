require 'pry'

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
    verse = []

    je_te_plumerai = "Je te plumerai "
    alouette = "Alouette!"
    aaah = "A-a-a-ah"
    # this returns an array of the single lines
    and_the_body_parts = Alouette.lines_for_verse(how_many_verses)
    just_first_body_part = and_the_body_parts[0]
    # puts just_first_body_part
    # take off "et " and "!" and put on "."
    just_first_body_part = just_first_body_part[3..-2] + "."
    # "je te plumerai " and whatever that first body part

    je_te_plus_first_body_part = je_te_plumerai + just_first_body_part

    2.times {verse << je_te_plus_first_body_part}

    and_the_body_parts.each do |line|
      2.times {verse << line}
    end

    2.times {verse << alouette}
    verse << aaah
    verse = verse.join("\n")
    return verse
  end

  def self.sing
    song_lyrics = File.open("alouette_lyrics.txt", "r").to_s
  end

end

Alouette.verse(2)
