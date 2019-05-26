local comment = function ( self, x, y, frame, grid )
  
  self.x = x
  self.y = y
  
  self.name = 'comment'
  self.info = {'Halts a line.'}
  
  self.ports = {}
  
  for x = x + 1, self.XSIZE do
    self.lock(x, y, false, true )
    grid.params[self.y][self.x].seq = x
    if grid[y][x] == '#' then
      for c = x + 1, self.XSIZE - x do
        if grid[y][c] == '#' then 
          break 
        else
          self.unlock(c, y, false)
        end
      end
    break
    else
    end
  end
  
end

return comment
