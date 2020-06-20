require 'stackprof'

class HomeController < ApplicationController

  def write_to_file(id)
      open('output.out', 'a') do | file |
          file.puts "RequestId #{ id } from report at #{ Time.new } \n" 
      end
  end
  
  def custom_method()

      reportnum = 1
      i = 1
      num = 21474
  
      begin
<<<<<<< HEAD
          reportnum = reportnum * i;      
=======
          reportnum = reportnum * i * i;      
>>>>>>> a118945cab2c3223c37af2f7967408e507b52528
          #Open file
          write_to_file(i)
          i +=1;
       end until i > num

  end
<<<<<<< HEAD

  def fib(n)
    if (n<=2)
      return 1
    else
      return (fib(n-1)+fib(n-2))
    end
  end
  
=======
>>>>>>> a118945cab2c3223c37af2f7967408e507b52528
  
  def index

    start_time = Time.now

    StackProf.run(mode: :cpu, out: 'tmp/stackprof-cpu-myapp.dump', raw:true) do
      p "Starting Profiler"
<<<<<<< HEAD
      p fibonacci(40)
=======
>>>>>>> a118945cab2c3223c37af2f7967408e507b52528
      custom_method()
      p "Finish method and profiler"
    end

    end_time = Time.now 
    
    elapsed_seconds = end_time.to_f - start_time.to_f

    @output = "Response back from method in #{elapsed_seconds}"

  end
end
