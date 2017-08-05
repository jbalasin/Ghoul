function read(prompt::String)
         print(prompt)
         return chomp(readline())
end


function intro()
        println("Ghoul - version 1.0")
        println("Enter -help for instructions or -quit to exit")
        println("################################################\n")
end

function checkSyntax(query)
         println("Checking: $query")
end

intro()
input = ""
prompt = "ghoul> "

# REPL #

while(!contains(input,"-quit"))

        input = chomp(input * " " * read(prompt))

        if(input[end] == ';')
                checkSyntax(input)
                prompt = "ghoul> "
                input = ""
   else
                prompt = "ghoul- "
        end

end

