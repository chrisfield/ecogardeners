module EcogAuth
  def authenticate
    redirect_to login_path, alert:"Not authorised" if current_user.nil?
  end
end
