class UsersController < Clearance::UsersController
  def create
    @user = user_from_params

    if @user.save
      sign_in @user
      redirect_back_or url_after_create
    else
      render :new
    end
  end

  def user_from_params
    email = user_params.delete(:email)
    password = user_params.delete(:password)
    first_name = user_params.delete(:first_name)
    last_name = user_params.delete(:last_name)
    st_number = user_params.delete(:st_number)
    st_name = user_params.delete(:st_name)
    zip = user_params.delete(:zip)
    city = user_params.delete(:city)


    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = email
      user.password = password
      user.first_name = first_name
      user.last_name = last_name
      user.st_number = st_number
      user.st_name = st_name
      user.zip = zip
      user.city = city
    end
  end
end
