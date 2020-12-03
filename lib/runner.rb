require 'minitest/autorun'
require 'minitest/pride'
require_relative 'board'
require 'pry'
class BoardTest < Minitest::Test
  def test_the_board_exists
    board = Board.new
    assert_instance_of Board, board
  end
  def test_board_has_nine_empty_spaces
    # Setup
    board = Board.new
    spaces = ['', '', '',
              '', '', '',
              '', '', '']
    # Execution
    board_spaces = board.spaces
    # Assertion
    assert_equal spaces, board_spaces
  end

  def test_it_can_mark_the_board
    board = Board.new
    spaces = ['X', '', '',
              '', '', '',
              '', '', '']
    board.mark('X',0)

    assert_equal spaces, board.spaces
  end

  def test_it_cant_remark
    board = Board.new
    board.mark('X',0)
    assert_nil board.mark('X',0)
  end
end