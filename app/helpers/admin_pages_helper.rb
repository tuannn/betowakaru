module AdminPagesHelper
  
  def securitycheck
    if !signed_in?
      redirect to signin_path
    end
  end
end
