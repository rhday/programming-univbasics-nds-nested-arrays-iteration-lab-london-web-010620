def join_ingredients(src)
  sentence_array = []
  pair_index = 0
  while pair_index < src.length do
    ingredient_index = 0
    pizza_order = "I love "
    while ingredient_index < src[pair_index].length do
      pizza_order += src[pair_index][ingredient_index]
      pizza_order += " and "
      ingredient_index += 1
    end
    pizza_order.delete_suffix!("and ")
    pizza_order += "on my pizza"
    sentence_array << pizza_order
    pair_index += 1
  end
  return sentence_array
end

def find_greater_pair(src)
    greater_number_array = 0
    pair_index = 0
    while pair_index < src.length do
       if src[pair_index][0] > src[pair_index][1]
            greater_number_array << src[pair_index][0]
       else
            greater_number_array << src[pair_index][1]
        end
        pair_index += 1
    end
    return greater_number_array
  end

def total_even_pairs(src)
    pair_index = 0
    even_number_array = []
    while pair_index < src.length do 
        if src[pair_index][0] % 2 == 0 && src[pair_index][1] % 2 == 0
            even_number_array += src[pair_index][0]
            even_number_array += src[pair_index][1]
        end
        pair_index += 1
    end
    even_number_array
end
