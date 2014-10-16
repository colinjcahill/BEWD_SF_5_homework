module ApplicationHelper

				def us_states
			    [
			      ['Alabama', 'AL'],
			      ['Alaska', 'AK'],
			      ['Arizona', 'AZ'],
			      ['Arkansas', 'AR'],
			      ['California', 'CA'],
			      ['Colorado', 'CO'],
			      ['Connecticut', 'CT'],
			      ['Delaware', 'DE'],
			      ['District of Columbia', 'DC'],
			      ['Florida', 'FL'],
			      ['Georgia', 'GA'],
			      ['Hawaii', 'HI'],
			      ['Idaho', 'ID'],
			      ['Illinois', 'IL'],
			      ['Indiana', 'IN'],
			      ['Iowa', 'IA'],
			      ['Kansas', 'KS'],
			      ['Kentucky', 'KY'],
			      ['Louisiana', 'LA'],
			      ['Maine', 'ME'],
			      ['Maryland', 'MD'],
			      ['Massachusetts', 'MA'],
			      ['Michigan', 'MI'],
			      ['Minnesota', 'MN'],
			      ['Mississippi', 'MS'],
			      ['Missouri', 'MO'],
			      ['Montana', 'MT'],
			      ['Nebraska', 'NE'],
			      ['Nevada', 'NV'],
			      ['New Hampshire', 'NH'],
			      ['New Jersey', 'NJ'],
			      ['New Mexico', 'NM'],
			      ['New York', 'NY'],
			      ['North Carolina', 'NC'],
			      ['North Dakota', 'ND'],
			      ['Ohio', 'OH'],
			      ['Oklahoma', 'OK'],
			      ['Oregon', 'OR'],
			      ['Pennsylvania', 'PA'],
			      ['Puerto Rico', 'PR'],
			      ['Rhode Island', 'RI'],
			      ['South Carolina', 'SC'],
			      ['South Dakota', 'SD'],
			      ['Tennessee', 'TN'],
			      ['Texas', 'TX'],
			      ['Utah', 'UT'],
			      ['Vermont', 'VT'],
			      ['Virginia', 'VA'],
			      ['Washington', 'WA'],
			      ['West Virginia', 'WV'],
			      ['Wisconsin', 'WI'],
			      ['Wyoming', 'WY']
			    ]
			end


	def cp(path)			
		 if current_page?(path)
		 	"active"
		 end
	end



  	def random_background_image
  		images = %w(http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-2-1024x684.jpg
  			http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-3-1024x680.jpg
  			http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-24-1024x677.jpg
  			http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-25-1024x768.jpg
  			http://fillthewell.com/wp-content/uploads/2014/04/beautiful-libraries-27-760x1024.jpg
  			http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-7.jpg
  			http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-8.jpg
http://fillthewell.com/wp-content/uploads/2014/04/beautiful-libraries-28.jpg
http://fillthewell.com/wp-content/uploads/2014/04/beautiful-libraries-29.jpg
http://fillthewell.com/wp-content/uploads/2014/04/beautiful-libraries-30.jpg
http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-12.png
http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-13.png
http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-14.png
http://fillthewell.com/wp-content/uploads/2014/04/beautiful-libraries-31.jpg
http://fillthewell.com/wp-content/uploads/2014/04/beautiful-libraries-32.jpg
http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-17-1024x679.jpeg
http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-18.jpg
http://fillthewell.com/wp-content/uploads/2014/04/beautiful-libraries-33.jpg
http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-20.jpg
http://fillthewell.com/wp-content/uploads/2014/04/most-beautiful-libraries-21.jpg
http://fillthewell.com/wp-content/uploads/2014/04/beautiful-libraries-34.jpg)
		images.compact.sample

	  # image_files = %w( .jpg .gif .png )
	  # files = Dir.entries('app/assets/images/backgrounds').delete_if { |x| !image_files.index(x[-4,4]) }
	  # files[rand(files.length)]
	  
	end
end
