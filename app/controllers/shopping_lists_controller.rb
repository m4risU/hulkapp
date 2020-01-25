class ShoppingListsController < ApplicationController
  def show
    render json: [
      {item_name: 'ham', amount: '500 g', category: 'meat'},
      {item_name: 'apples', amount: '3 pieces', category: 'fruit'},
      {item_name: 'milk', amount: '1200 ml', category: 'dairy'},
      {item_name: 'bread', amount: '200 g', category: 'bread'},
      {item_name: 'carrot', amount: '300 g', category: 'vegetables'},
      {item_name: 'pepper', amount: '10 g', category: 'spices'},
      {item_name: 'trout', amount: '700 g', category: 'fish'},
      {item_name: 'olive oil', amount: '20 g', category: 'other'}
    ]
  end
end
