class TowersOfHanoi
  attr_reader :towers

  def initialize()
    @towers = [[1,2,3],[],[]]
  end

  def move(from, to)
    if valid_move?(from, to)
      towers[to].unshift(towers[from].shift)
    else
      puts "Not a valid move"
    end
  end

  def valid_move?(from, to)
    return false if self.towers[from].empty?
    return true if self.towers[to].empty?
    self.towers[from].first < self.towers[to].first
  end

  def won?
    towers[1].length == 3 || towers[2].length == 3
  end

end
