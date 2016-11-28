class Parcels
  define_method(:initialize) do |height, width, weight, distance, speed|
    @height = height
    @width = width
    @weight = weight
    @distance = distance
    @speed = speed
  end

  define_method(:volume) do
    @height * @width
  end

  define_method(:cost_to_ship) do
    (self.volume() * @weight * (@distance./(100)))/@speed
  end
end
