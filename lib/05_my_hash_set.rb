class MyHashSet
  # TODO: your code goes here!
  def initialize
    @store = {}
  end

  def store
    @store
  end

  def insert(str)
    @store[str] = nil
    true
  end

  def include?(str)
    @store.has_key?(str)
  end

  def delete(str)
    @store.delete(str)
  end

  def to_a
    @store.keys
  end

  def union(set_two)
    new_set = MyHashSet.new
    @store.each do |key, _|
      new_set.insert(key)
    end
    set_two.store.each do |key,_|
      new_set.insert(key)
    end
    new_set
  end

  def intersect(set_two)
    new_set = MyHashSet.new
    set_two.store.each do |key, _|
      new_set.insert(key) if self.to_a.include?(key)
    end
    new_set
  end

  def minus(set_two)
    new_set = self.dup
    set_two.store.each do |key, _|
      new_set.delete(key) if new_set.include?(key)
    end
    new_set
  end
end