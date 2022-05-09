class ResultsController < ApplicationController
    def result
        #@results=Result.search(params[:search])
       
          @usn_id=params[:search]
          @learners=Student.all.where("lower(usn) LIKE :search",search: "%#{@usn_id}%")
          #@ids= []
  

         @marks=Result.all.where("lower(usn) LIKE :search",search: "%#{@usn_id}%")
         @courseids=@marks.map(&:course_id)
         
          @subs=Course.all.where(id: @courseids)


          #@learners.each do |learner|
            
            #@ids <<learner.id
          #end
         
         #@marks=Result.where(student_id: @ids)
        # @courseids=@marks.map(&:course_id)
          ##@marks.each do |mark|
          # #  @courseids=mark.course_id
          ##end
            # @subs=Course.all.where(id: @courseids)
  
  
             
      end
end
