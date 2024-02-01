require 'pry'
require_relative "player.rb"

class BoardCase
  attr_accessor :grid
  def initialize
    @grid = Array.new(3) {Array.new(3, " ")}
  end

  def display_grid
    col_values = ['1', '2', '3']
    row_values = ['A', 'B', 'C']
    puts "  #{col_values.join(" ")}"
    @grid.each_with_index do |row, row_index|
      print "#{row_values[row_index]} "
      row.each do |slot|
        print "#{slot} "
      end
      puts ""
    end
  end    
end
