require('rspec')
require('to_do')

describe(Task) do
  before() do
    Task.clear()
  end

  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new("make fun of Christoph")
      expect(test_task.description()).to(eq("make fun of Christoph"))
    end
  end

 describe(".all") do
   it("is empty at first") do
     expect(Task.all()).to(eq([]))
   end
 end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_to_do = Task.new("Give Christoph a bath")
      test_to_do.save()
      expect(Task.all()).to(eq([test_to_do]))
    end
  end

  describe(".clear") do
    it ("empties out all of the saved tasks") do
      Task.new("Christoph needs a bath").save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end



end
