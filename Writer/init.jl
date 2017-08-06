# initilizes and loads necessart adjacency matrices

struct Initializer
    pagesExists::Bool
    contentsExists::Bool
    firstPageExists::Bool
end

function checkStatus(init::Initializer)
    if(!isdir("/pages"))
        mkdir(pwd() + "/pages")
    end

    init.pagesExists = true 
    
    cd("/pages")
    
    if(!isfile("contents.ghlg"))
       # this is th first time running Ghoul
       # We gotta get some stuff together
        contentsPage = open("contents.ghlg")
        init.contentsExists = true
    else
        # contents already exists so we get prept for queries
        
    end
    
end
    

