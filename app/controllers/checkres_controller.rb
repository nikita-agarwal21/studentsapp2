class CheckresController < ApplicationController
    def checkresult
      @usn_id=params[:search]
      @learners=Student.all.where("lower(usn) LIKE :search",search: "%#{@usn_id}%")
      #@marks=Result.all.where("lower(usn) LIKE :search",search: "%#{@usn_id}%")
      #@ids= []
      #@learners.each do |learner|
       # @ids <<learner.id
      #end
      @marks=Result.where(student_id: @learners.ids)
      #@courseids=@marks.map(&:course_id)
      
      @courseids=@marks.map(&:course_code)
      @subs=Course.all.where(course_code: @courseids)
      
    end
    def check
        #@results=Result.search(params[:search])
   
      #@usn_id=params[:search]
      #@learner=Student.find(search: @usn_id)
      @learner=Student.find(1)

      @marks=@learner.result
  

    end

#@results=Result.search(params[:search])
          #@learner=Student.find(@usn_id)
          #@marks=@learner.results

      #@learners.each do |learner|
            #@ids <<learner.id
          #end
          ##@ids= []
         #@marks=Result.where(student_id: @ids)
        # @courseids=@marks.map(&:course_id)
          ##@marks.each do |mark|
          # #  @courseids=mark.course_id
          ##end
            # @subs=Course.all.where(id: @courseids)
  
   
end
