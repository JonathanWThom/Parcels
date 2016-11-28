class Parcels
  define_method(:initialize) do |height, width, depth, weight, distance, speed|
    @height = height
    @width = width
    @depth = depth
    @weight = weight
    @distance = distance
    @speed = speed
  end

  define_method(:volume) do
    @height * @width
  end

  define_method(:surface_area) do
    @height * @width * @depth
  end

  define_method(:cost_to_ship) do
    cost = 0
    base_cost = (self.volume() * @weight * (@distance./(100)))/@speed
    if @depth > 0
      cost = base_cost + self.surface_area()
    else
      cost = base_cost
    end
    cost
  end
end
