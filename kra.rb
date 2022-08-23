#pseudocode

#input the salary to be taxed and employee's name
#output net sallary of the employee into float datatype
#if  payee is deducted based on the criteria given therefore

# if gross salary <  24000==10%
     # gross salry > 24001-32333==25%
     # gross salry > 32333==30%
#  output payee deducted


# deduct nhif if gross salry < 5999==150
     # gross salry <29999==850
     #gross salry  <44999==1000
     # gross salry >100000==1700
     
#output nhif deducted

#deduct 400shillings  nssf if employees salary > 1000
#output nssf deducted
#calculate  taxed income/net salary = (gross salary - (where tax = payee + nssf + nhif))


 class Payroll
    attr_accessor :net_salary, :employee_name

    def initialize(salary, employee)
        @net_salary = salary
        @employee_name = employee
    end

    def gross_salary
        # gross salary is equal to net salary before any deductions 
        @net_salary
    end

    #start deducting the net salary 
    def payee_deductions
      if @net_salary  > 23000 && @net_salary  < 24000
        return @net_salary *0.1

      elsif @net_salary  >= 24001 && @net_salary  < 32333 
        return @net_salary *0.25

      elsif @net_salary y >= 32333
        return @net_salary *0.3

      else
        return puts "no payee deductions"
      end  
      
    end

# start deducting nhid based on employees income
def nhif_deductions

    if @net_salary  >1000 && @net_salary  <=5999
      return 150

    elsif @net_salary  > 5999 && @net_salary  <= 29999 
      return 850 

    elsif @net_salary  >29999 && @net_salary  <=44999
      return 1000

    elsif @net_salary  >= 100000 
      return 1700

    else
      return puts "no nhif deductions" 
    end  
  end
 
  # start deduction nssf which is contanct to any employees income
  def nssf_deductions
    
    if @net_salary>1000
      return 400
    else
      return puts "zero nsff deductions"
    end
  end

  #after deducting all the benfits and payee.

  def net_salary
    #after all tax deductions
   total_tax =  payee_deductions + nhif_deductions + nssf_deductions
    return (@net_salary - total_tax) 
  end

 end

 #an instance method
 James = Payroll.new("James",349376)

puts "Total Employee Gross Salary Income: #{James.gross_salary}"

puts "Total Employee  NHIF  DEDUCTED: #{James.payee_deductions}"

puts "Total Employee NSSF  DEDUCTED:: #{James.nhif_deductions}"

puts "Total Employee PAYEE DEDUCTED: : #{James.nssf_deductions}"

puts "Total Employee Monthly Net Salary Income: #{James.net_salary}"
