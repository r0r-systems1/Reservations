require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
<<<<<<< HEAD
    @update = {
		:title => 'Lorem Ipsum',
		:description => 'Wibbles are fun!', 
		:image_url => 'lorem.jpg',
		:price => 19.95
		}

=======
>>>>>>> 74e131a2e9eb3dd5e699f0e0fd1e49d08ce35e78
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
<<<<<<< HEAD
 ### was     post :create, product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title }
    post :create, :product => @update
=======
      post :create, product: { address: @product.address, adult_price: @product.adult_price, contact: @product.contact, description: @product.description, event_date: @product.event_date, event_time: @product.event_time, event_type: @product.event_type, fam_price: @product.fam_price, image_url: @product.image_url, num_days: @product.num_days, pens_price: @product.pens_price, quote: @product.quote, quote_auth: @product.quote_auth, quote_ref: @product.quote_ref, title: @product.title, venue: @product.venue, youth_price: @product.youth_price }
>>>>>>> 74e131a2e9eb3dd5e699f0e0fd1e49d08ce35e78
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
<<<<<<< HEAD
## was    put :update, id: @product, product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title }

	put :update, :id =>@product.to_param, :product => @update
=======
    put :update, id: @product, product: { address: @product.address, adult_price: @product.adult_price, contact: @product.contact, description: @product.description, event_date: @product.event_date, event_time: @product.event_time, event_type: @product.event_type, fam_price: @product.fam_price, image_url: @product.image_url, num_days: @product.num_days, pens_price: @product.pens_price, quote: @product.quote, quote_auth: @product.quote_auth, quote_ref: @product.quote_ref, title: @product.title, venue: @product.venue, youth_price: @product.youth_price }
>>>>>>> 74e131a2e9eb3dd5e699f0e0fd1e49d08ce35e78
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
