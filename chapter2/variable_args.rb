def marks(*scores)
    puts scores.sum
end
marks(80,90,78)

def students(*names)
    names.each do |name|
        puts name
    end
end
students("Alice","Bob","Charlie")

def company(company_name, *employees)
    puts "Company: #{company_name}"

    employees.each do |emp|
        puts emp
    end
end
company("Labsmart" ,"bhoomi" , "aman" ,"riya")