json.array!(@personas) do |p|
	json.extract! p, :id, :nombre
end
