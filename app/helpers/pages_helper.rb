module PagesHelper
    # def home
    #     cookies[:mi_primera_cookie] = "Hola mundo"
    # end
    
    def cookies_handler
        if cookies[:plana]
            puts cookies[:plana]
        else
            cookies[:plana] = "COOKIE PLANA 🧀"
        end
  
        if cookies.signed[:firmada]
            puts cookies.signed[:firmada]
        else
            cookies.signed[:firmada] = "Hola mundo FIRMADO 🍕"
        end
        
        if cookies.encrypted[:encriptada]
            cookies.encrypted[:encriptada]
        else
            cookies.encrypted[:encriptada] = "TEXTO SECRETO 🧀"
        end
  
        if session[:variable_sesion]
          puts session[:variable_sesion]
        else
          session[:variable_session] = "EN LA SESION 🥓"
        end
  
    end
end
